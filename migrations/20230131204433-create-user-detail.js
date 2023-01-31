'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("user_details", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      job: {
        type: Sequelize.STRING,
        defaultValue: "unknown",
      },
      domicile: {
        type: Sequelize.STRING,
        defaultValue: "unknown",
      },
      company: {
        type: Sequelize.STRING,
        defaultValue: "unknown",
      },
      description: {
        type: Sequelize.STRING,
        defaultValue: "-",
      },
      skills: {
        type: Sequelize.STRING,
        defaultValue: "[]",
      },
      user_id: {
        type: Sequelize.INTEGER,
        allowNull: false,
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('user_details');
  }
};