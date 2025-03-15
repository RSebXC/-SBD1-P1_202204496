import { Sequelize } from 'sequelize';

export const sequelize = new Sequelize('bases-1', 'rodrigo', '123', {
    host: 'localhost',  
    dialect: 'oracle',  
    port: 1521, 
    dialectOptions: {
        connectString: 'localhost/XEPDB1'
    }
});

export default sequelize;
