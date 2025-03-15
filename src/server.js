import express from 'express';
import session from 'express-session';
import dotenv from 'dotenv';
import sequelize from './config/database.js';
import userRoutes from './routes/userRoutes.js'; // Rutas de usuario
import productRoutes from './routes/productRoutes.js'; // Rutas de producto

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(express.json());
app.use(session({
    secret: 'mysecret',
    resave: false,
    saveUninitialized: true
}));

// Rutas
app.use('/api/users', userRoutes);
app.use('/api/products', productRoutes);

// Probar conexión a la BD
async function testDBConnection() {
    try {
        await sequelize.authenticate();
        console.log(' Conexión a Oracle (Sequelize) exitosa');
    } catch (err) {
        console.error(' Error conectando a Oracle:', err);
    }
}

testDBConnection();

// Iniciar servidor y sincronizar la BD
sequelize.sync().then(() => {
    app.listen(PORT, () => console.log(` Servidor corriendo en http://localhost:${PORT}`));
});
