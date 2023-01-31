require("dotenv").config();
const model = require("../../models");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");

const login = async (req, res) => {
  try {
    const check = await model.users.findOne({
      where: { email: req?.body?.email },
    });

    if (!check) {
      throw {
        message: "Email not registered.",
        code: 400,
      };
    }

    const compare = await bcrypt.compare(req?.body?.password, check?.password);

    if (!compare) {
      throw {
        message: "Incorrect Password",
        code: 400,
      };
    }

    const token = jwt.sign(check.dataValues, process.env.APP_SECRET_KEY, {
      expiresIn: "24h",
    });

    res.status(201).json({
      messages: "data ada",
      data: check,
      token: token,
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

const registerRecruiter = async (req, res) => {
  try {
    const check = await model.users.findOne({
      where: { email: req?.body?.email },
    });

    if (check) {
      throw {
        message: "Email already registered.",
        code: 400,
      };
    }

    // hash password
    bcrypt.hash(req?.body?.password, 10, async (err, hash) => {
      if (err) {
        throw {
          message: "Something Error in server",
          code: 500,
        };
      }

      // insert into db
      const insertRecruiter = await model.recruiter.create({
        ...req.body,
      });

      // insert into db
      const insertUser = await model.users.create({
        ...req.body,
        ...{ password: hash, recruiter_id: insertRecruiter?.id },
      });

      // insert into db
      await model.user_detail.create({
        ...req.body,
        ...{ user_id: insertUser?.id },
      });

      res.status(201).json({
        messages: "insert success",
        data: insertUser,
      });
    });
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};

module.exports = { login, registerRecruiter };
