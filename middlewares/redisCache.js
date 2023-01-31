require("dotenv").config();
const redis = require("../utils/redis");

const cache = (req, res, next) => {
  if (
    process.env.REDIS_HOST &&
    process.env.REDIS_PORT &&
    process.env.REDIS_PASS
  ) {
    if (req.originalUrl === "/v1/user/profile") {
      const authorization = req.headers.authorization;

      redis.get(`profile_${authorization.slice(6).trim()}`, (error, result) => {
        if (error) {
          return next();
        }
        if (result !== null) {
          return res.json({
            cached: true,
            messages: "Data store from redis",
            data: JSON.parse(result),
          });
        } else {
          return next();
        }
      });
    } else {
      redis.get(req.originalUrl, (error, result) => {
        if (error) {
          return next();
        }
        if (result !== null) {
          return res.json({
            cached: true,
            messages: "Data store from redis",
            data: JSON.parse(result),
          });
        } else {
          return next();
        }
      });
    }
  } else {
    return next();
  }
};

module.exports = cache;
