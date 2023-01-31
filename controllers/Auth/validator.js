module.exports = {
  login: {
    email: "required|email",
    password: "required",
  },
  registerRecruiter: {
    fullname: "string|required",
    email: "email|required",
    company: "string|required",
    position: "string|required",
    phone_number: "required|phoneNumber",
    password: "required|minLength:8",
  },
};
