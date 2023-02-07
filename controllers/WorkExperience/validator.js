module.exports = {
  addWorkExp: {
    position: "required|string|maxLength:40",
    company: "required|string|maxLength:30",
    date: "required|string|maxLength:20",
    description: "required|string|maxLength:200|minLength:5",
  },
};
