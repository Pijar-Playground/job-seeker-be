'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class hire_history extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  hire_history.init(
    {
      user_id: DataTypes.INTEGER,
      recruiter_id: DataTypes.INTEGER,
      description: DataTypes.STRING,
      phone_number: DataTypes.STRING,
      purpose: DataTypes.STRING,
      fullname: DataTypes.STRING,
      email: DataTypes.STRING,
      is_read: DataTypes.BOOLEAN,
    },
    {
      sequelize,
      modelName: "hire_history",
    }
  );
  return hire_history;
};