const model = require("../../models");
const jwt = require("jsonwebtoken");

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

    const project = await model.user_detail.findAll({
      where: { id: decode?.id },
      include: [
        {
          model: model.users,
          attributes: { exclude: ["password"] },
        },
      ],
    });

    res.status(200).json({
      messages: "data ada",
      data: project,
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

    const isValidOrder = ["DESC", "ASC"].find((item) => item === order);
    const isValidSort = ["id", "name", "skills", "domicile", "job"].find(
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
        message: `Invalid order sort by (id, name, skill, lokasi, job) Only`,
        code: 400,
      };
    }

    const project = await model.user_detail.findAndCountAll({
      include: [
        {
          model: model.users,
          attributes: { exclude: ["password"] },
        },
      ],
      order: [configOrder],
      offset: page,
      limit: limit,
    });

    res.status(200).json({
      messages: "data ada",
      data: project,
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

module.exports = { getProfile, getProfileList };
