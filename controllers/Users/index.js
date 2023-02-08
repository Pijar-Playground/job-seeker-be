const model = require("../../models");
const jwt = require("jsonwebtoken");
const Sequelize = require("sequelize");
const Op = Sequelize.Op;

// GET
const getProfile = async (req, res) => {
  try {
    const authorization = req.headers.authorization;

    const decode = jwt.verify(
      authorization.slice(6).trim(),
      process.env.APP_SECRET_KEY
    );

    model.user_detail.belongsTo(model.users, {
      foreignKey: {
        name: "user_id",
        allowNull: true,
      },
    });

    model.user_detail.hasMany(model.portfolio, {
      foreignKey: {
        name: "user_id",
      },
    });

    model.user_detail.hasMany(model.work_experience, {
      foreignKey: {
        name: "user_id",
      },
    });

    const result = await model.user_detail.findAll({
      where: { user_id: decode?.id },
      include: [
        {
          model: model.users,
          attributes: { exclude: ["password"] },
        },
        {
          model: model.portfolio,
          attributes: { exclude: ["user_id"] },
        },
        {
          model: model.work_experience,
          attributes: { exclude: ["user_id"] },
        },
      ],
    });

    res.status(200).json({
      messages: "get data sucess",
      data: result,
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

const getProfileList = async (req, res) => {
  try {
    model.user_detail.belongsTo(model.users, {
      foreignKey: {
        name: "user_id",
        allowNull: true,
      },
    });

    const limit = req?.query?.limit ?? 5;
    const page = ((req?.query?.page ?? 1) - 1) * limit;
    const sortBy = req?.query?.sortBy ?? "id";
    const order = req?.query?.order ?? "DESC";
    const keyword = req?.query?.keyword ?? "";

    const isValidOrder = ["DESC", "ASC"].find((item) => item === order);
    const isValidSort = ["id", "skills", "domicile", "job"].find(
      (item) => item === sortBy
    );

    const configOrder = [sortBy, order];

    if (limit > 15) {
      throw {
        message: "Max Limit 15",
        code: 400,
      };
    }

    if (!isValidOrder) {
      throw {
        message: "Invalid order value (ASC / DESC) Only",
        code: 400,
      };
    }

    if (!isValidSort) {
      throw {
        message: `Invalid order sort by (id, skills, domicile, job) Only`,
        code: 400,
      };
    }

    const result = await model.user_detail.findAndCountAll({
      include: [
        {
          model: model.users,
          attributes: { exclude: ["password"] },
          where: {
            recruiter_id: {
              [Op.eq]: 0,
            },
          },
        },
      ],
      where: {
        skills: {
          [Op.iLike]: `%${keyword}%`,
        },
      },
      order: [configOrder],
      offset: page,
      limit: limit,
      raw: true,
    });

    res.status(200).json({
      messages: "data ada",
      data: {
        count: result?.count,
        totalPage: Math.ceil(result?.count / limit),
        rows: result.rows?.map((item) => ({
          ...item,
          ...{ skills: JSON.parse(item?.skills) },
        })),
      },
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

const getProfileById = async (req, res) => {
  try {
    const { id } = req.params;

    model.user_detail.belongsTo(model.users, {
      foreignKey: {
        name: "user_id",
        allowNull: true,
      },
    });

    model.user_detail.hasMany(model.portfolio, {
      foreignKey: {
        name: "user_id",
      },
    });

    model.user_detail.hasMany(model.work_experience, {
      foreignKey: {
        name: "user_id",
      },
    });

    const result = await model.user_detail.findAll({
      where: { user_id: id },
      include: [
        {
          model: model.users,
          attributes: { exclude: ["password"] },
          where: {
            recrhuiter_id: 0,
          },
        },
        {
          model: model.portfolio,
          attributes: { exclude: ["user_id"] },
        },
        {
          model: model.work_experience,
          attributes: { exclude: ["user_id"] },
        },
      ],
    });

    res.status(200).json({
      messages: result?.length ? "Get data sucess" : "Data not found",
      data: result,
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

// POST
const sendInvitation = async (req, res) => {
  try {
    const authorization = req.headers.authorization;

    const decode = jwt.verify(
      authorization.slice(6).trim(),
      process.env.APP_SECRET_KEY
    );

    // insert into db
    const insertInvitation = await model.hire_history.create({
      ...req.body,
      ...{ recruiter_id: decode?.id },
    });

    res.status(201).json({
      messages: "insert success",
      data: insertInvitation,
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

// UPDATE
const updateProfile = async (req, res) => {
  try {
    const authorization = req.headers.authorization;

    const decode = jwt.verify(
      authorization.slice(6).trim(),
      process.env.APP_SECRET_KEY
    );

    const removeEmpty = (obj) => {
      Object.keys(obj).forEach(
        (k) => !obj[k] && obj[k] !== undefined && delete obj[k]
      );
      return obj;
    };

    let secureUpdate = removeEmpty(req.body);

    if (secureUpdate.fullname) {
      await model.users.update(
        {
          fullname: secureUpdate.fullname,
        },
        {
          where: {
            id: decode.id,
          },
        }
      );
    }

    await model.user_detail.update(secureUpdate, {
      where: {
        user_id: decode.id,
      },
    });

    res.status(200).json({
      messages: "update data sucess",
      data: req.body,
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

const updateSkills = async (req, res) => {
  try {
    const authorization = req.headers.authorization;

    const decode = jwt.verify(
      authorization.slice(6).trim(),
      process.env.APP_SECRET_KEY
    );

    const removeEmpty = (obj) => {
      Object.keys(obj).forEach(
        (k) => !obj[k] && obj[k] !== undefined && delete obj[k]
      );
      return obj;
    };

    let secureUpdate = removeEmpty(req.body);

    await model.user_detail.update(
      { skills: JSON.stringify(secureUpdate?.skills ?? []) },
      {
        where: {
          user_id: decode.id,
        },
      }
    );

    res.status(200).json({
      messages: "update skills sucess",
      data: secureUpdate?.skills ?? [],
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

module.exports = {
  getProfile,
  getProfileList,
  getProfileById,
  sendInvitation,
  updateProfile,
  updateSkills,
};
