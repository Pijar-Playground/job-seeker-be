const model = require("../../models");
const setRedis = require("../../utils/setRedis");

const getJobList = async (req, res) => {
  try {
    
  } catch (error) {
    res.status(error?.code ?? 500).json({
      messages: error?.message ?? "Something error on server",
      data: null,
    });
  }
};
