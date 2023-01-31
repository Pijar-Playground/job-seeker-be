'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class user_detail extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  user_detail.init(
    {
      job: DataTypes.STRING,
      domicile: DataTypes.STRING,
      company: DataTypes.STRING,
      description: DataTypes.STRING,
      skills: DataTypes.STRING,
      user_id: DataTypes.INTEGER,
    },
    {
      sequelize,
      modelName: "user_detail",
    }
  );
  return user_detail;
};