const model = require("../../models");
const jwt = require("jsonwebtoken");
const Sequelize = require("sequelize");
const Op = Sequelize.Op;

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

    const result = await model.user_detail.findAll({
      where: { id: decode?.id },
      include: [
        {
          model: model.users,
          attributes: { exclude: ["password"] },
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

    const page = (req?.query?.page ?? 1) - 1;
    const limit = req?.query?.limit ?? 5;
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

    const project = await model.user_detail.findAndCountAll({
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
        count: project?.count,
        rows: project.rows?.map((item) => ({
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

    const result = await model.user_detail.findAll({
      where: { id },
      include: [
        {
          model: model.users,
          attributes: { exclude: ["password"] },
          where: {
            recruiter_id: 0,
          },
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

module.exports = { getProfile, getProfileList, getProfileById, sendInvitation };
