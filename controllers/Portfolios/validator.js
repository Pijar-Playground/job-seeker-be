module.exports = {
  addPortfolio: {
    name: "required|minLength:3|maxLength:50",
    photo: "required|string",
    link: "required|string",
    type: "required|string",
  },
};
