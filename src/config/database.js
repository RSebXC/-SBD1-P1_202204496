import { Sequelize } from 'sequelize';

const sequelize = new Sequelize('mi_base', 'mi_usuario', 'mi_contraseña', {
    host: 'localhost',  
    dialect: 'oracle',  
    port: 1521, 
    dialectOptions: {
        connectString: 'localhost/XEPDB1'
    }
});

export default sequelize;
