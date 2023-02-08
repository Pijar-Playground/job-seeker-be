'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("work_experiences", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      position: {
        type: Sequelize.STRING,
      },
      company: {
        type: Sequelize.STRING,
      },
      date: {
        type: Sequelize.STRING,
      },
      description: {
        type: Sequelize.TEXT,
      },
      user_id: {
        type: Sequelize.INTEGER,
      },
      logo: {
        type: Sequelize.STRING,
        defaultValue:
          "https://www.pngitem.com/pimgs/m/78-788231_icon-blue-company-icon-png-transparent-png.png",
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
    await queryInterface.dropTable('work_experiences');
  }
};