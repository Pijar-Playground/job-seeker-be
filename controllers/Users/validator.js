module.exports = {
  sendInvitation: {
    fullname: "string|required",
    email: "email|required",
    user_id: "integer|required",
    purpose: "string|required",
    phone_number: "required|phoneNumber",
    description: "required|minLength:10|maxLength:200",
  },
};
