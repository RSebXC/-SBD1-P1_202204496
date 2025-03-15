const bcrypt = require('bcrypt');
const User = require('../models/User');

exports.createUser = async (req, res) => {
  const { username, email, password, phone } = req.body;
  if (!username || !email || !password || !phone) {
    return res.status(400).json({ status: 'error', message: 'Datos incompletos' });
  }
  const existingUser = await User.findOne({ where: { username } });
  if (existingUser) {
    return res.status(409).json({ status: 'error', message: 'El username o email ya existe' });
  }
  const hashedPassword = await bcrypt.hash(password, 10);
  await User.create({ username, email, password: hashedPassword, phone });
  res.status(201).json({ status: 'success', message: 'User created successfully' });
};

exports.loginUser = async (req, res) => {
  const { username, password } = req.body;
  if (!username || !password) {
    return res.status(400).json({ status: 'error', message: 'Falta algún campo' });
  }
  const user = await User.findOne({ where: { username } });
  if (!user || !(await bcrypt.compare(password, user.password))) {
    return res.status(401).json({ status: 'error', message: 'Credenciales inválidas' });
  }
  req.session.userId = user.id;
  res.json({ status: 'success', message: 'User authenticated', sessionId: req.session.id });
};