const model = require("../../models");
const jwt = require("jsonwebtoken");
const Sequelize = require("sequelize");
const Op = Sequelize.Op;

// POST
const addPortfolio = async (req, res) => {
  try {
    const authorization = req.headers.authorization;

    const decode = jwt.verify(
      authorization.slice(6).trim(),
      process.env.APP_SECRET_KEY
    );

    // insert into db
    const insertPortfolio = await model.portfolio.create({
      ...req.body,
      ...{ user_id: decode?.id },
    });

    res.status(201).json({
      messages: "insert success",
      data: insertPortfolio,
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

module.exports = { addPortfolio };
