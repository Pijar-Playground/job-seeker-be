const model = require("../../models");
const jwt = require("jsonwebtoken");
const Sequelize = require("sequelize");
const Op = Sequelize.Op;

// GET
const getInvitationById = async (req, res) => {
  try {
    const authorization = req.headers.authorization;

    const decode = jwt.verify(
      authorization.slice(6).trim(),
      process.env.APP_SECRET_KEY
    );

    // search
    const findUserDetail = await model.user_detail.findOne({
      where: { user_id: decode?.id },
    });

    await model.hire_history.update(
      { is_read: true },
      {
        where: {
          id: req.params.id,
        },
      }
    );

    const result = await model.hire_history.findAll({
      where: { user_id: findUserDetail?.dataValues?.id, id: req.params.id },
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

// POST
const sendInvitation = async (req, res) => {
  try {
    const authorization = req.headers.authorization;

    const decode = jwt.verify(
      authorization.slice(6).trim(),
      process.env.APP_SECRET_KEY
    );

    // search
    const findUserDetail = await model.user_detail.findOne({
      where: { user_id: decode?.id },
    });

    // insert into db
    const insertInvitation = await model.hire_history.create({
      ...req.body,
      ...{ recruiter_id: findUserDetail?.dataValues?.id },
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

module.exports = {
  getInvitationById,
  sendInvitation,
};
