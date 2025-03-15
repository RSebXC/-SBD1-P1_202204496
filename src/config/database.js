import { Sequelize } from 'sequelize';
import dotenv from 'dotenv';

dotenv.config();

export const sequelize = new Sequelize(process.env.DB_CONNECTION_STRING, {
    dialect: 'oracle',
    logging: false, // Evita spam en consola
});

