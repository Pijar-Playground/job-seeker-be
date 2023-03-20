const version = "/v1";

module.exports = [
  // user detail
  {
    path: `${version}/user/profile`,
    controllers: require("../controllers/Users").getProfile,
    method: "get",
  },
  {
    path: `${version}/user/invitation/:id`,
    controllers: require("../controllers/Invitation").getInvitationById,
    method: "get",
  },
  {
    path: `${version}/user/profile`,
    controllers: require("../controllers/Users").updateProfile,
    validator: require("../controllers/Users/validator").updateProfile,
    method: "patch",
  },
  {
    path: `${version}/user/skills`,
    controllers: require("../controllers/Users").updateSkills,
    validator: require("../controllers/Users/validator").updateSkills,
    method: "patch",
  },
  {
    path: `${version}/user/invitation`,
    controllers: require("../controllers/Invitation").sendInvitation,
    validator: require("../controllers/Invitation/validator").sendInvitation,
    method: "post",
  },
  {
    path: `${version}/user/invitation-sender`,
    controllers: require("../controllers/Invitation").getInvitationBySender,
    method: "get",
  },
  {
    path: `${version}/user/portfolio`,
    controllers: require("../controllers/Portfolios").addPortfolio,
    validator: require("../controllers/Portfolios/validator").addPortfolio,
    method: "post",
  },
  {
    path: `${version}/user/work-experience`,
    controllers: require("../controllers/WorkExperience").addWorkExp,
    validator: require("../controllers/WorkExperience/validator").addWorkExp,
    method: "post",
  },
];
