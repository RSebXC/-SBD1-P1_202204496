import Product from '../models/Product.js';

// Listar todos los productos (GET)
export const getAllProducts = async (req, res) => {
    try {
        const products = await Product.findAll();
        res.json({ products });
    } catch (error) {
        res.status(500).json({ error: 'Error obteniendo productos' });
    }
};

// Obtener detalle de un producto (GET)
export const getProductById = async (req, res) => {
    try {
        const product = await Product.findByPk(req.params.id);
        if (!product) {
            return res.status(404).json({ error: 'Producto no encontrado' });
        }
        res.json(product);
    } catch (error) {
        res.status(500).json({ error: 'Error obteniendo producto' });
    }
};

// Crear un producto (POST)
export const createProduct = async (req, res) => {
    try {
        const { name, description, price, stock, category } = req.body;
        const newProduct = await Product.create({ name, description, price, stock, category });
        res.status(201).json({
            status: 'success',
            message: 'Producto creado correctamente',
            productId: newProduct.id
        });
    } catch (error) {
        res.status(500).json({ error: 'Error creando producto' });
    }
};

// Actualizar un producto (PUT)
export const updateProduct = async (req, res) => {
    try {
        const { price, stock } = req.body;
        const product = await Product.findByPk(req.params.id);
        if (!product) {
            return res.status(404).json({ error: 'Producto no encontrado' });
        }
        await product.update({ price, stock });
        res.json({ status: 'success', message: 'Producto actualizado correctamente' });
    } catch (error) {
        res.status(500).json({ error: 'Error actualizando producto' });
    }
};

// Eliminar un producto (DELETE)
export const deleteProduct = async (req, res) => {
    try {
        const product = await Product.findByPk(req.params.id);
        if (!product) {
            return res.status(404).json({ error: 'Producto no encontrado' });
        }
        await product.destroy();
        res.json({ status: 'success', message: 'Producto eliminado correctamente' });
    } catch (error) {
        res.status(500).json({ error: 'Error eliminando producto' });
    }
};
