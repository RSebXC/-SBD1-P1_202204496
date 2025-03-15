import { DataTypes } from 'sequelize';
import { sequelize } from '../config/database.js';  

const Product = sequelize.define('Product', {
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    description: {
        type: DataTypes.STRING
    },
    price: {
        type: DataTypes.FLOAT,
        allowNull: false
    },
    stock: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    category: {
        type: DataTypes.STRING
    }
}, {
    tableName: 'products', // Asegura que coincide con la tabla en la BD
    timestamps: false
});

export default Product;
