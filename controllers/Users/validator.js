module.exports = {
  sendInvitation: {
    fullname: "string|required",
    email: "email|required",
    user_id: "integer|required",
    purpose: "string|required",
    phone_number: "required|phoneNumber",
    description: "required|minLength:10|maxLength:200",
  },
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
