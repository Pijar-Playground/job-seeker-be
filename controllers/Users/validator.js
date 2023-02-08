module.exports = {
  updateProfile: {
    fullname: "string|minLength:3|maxLength:200",
    job: "string|minLength:5|maxLength:200",
    domicile: "string|minLength:5|maxLength:200",
    company: "string|minLength:3|maxLength:200",
    description: "required|minLength:10|maxLength:200",
  },
  updateSkills: {
    skills: "array|required",
  },
};
