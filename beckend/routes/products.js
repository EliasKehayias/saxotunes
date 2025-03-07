// const express = require('express');
// const router = express.Router();
// const db = require('../db'); // Make sure you have a db connection file

// // Get all products
// router.get('/products', (req, res) => {
//   db.query('SELECT * FROM products', (err, results) => {
//     if (err) return res.status(500).json({ error: err.message });
//     res.json(results);
//   });
// });

// // Get a single product by ID
// router.get('/products/:id', (req, res) => {
//   const productId = req.params.id;
//   db.query('SELECT * FROM products WHERE id = ?', [productId], (err, result) => {
//     if (err) return res.status(500).json({ error: err.message });
//     if (result.length === 0) return res.status(404).json({ message: 'Product not found' });
//     res.json(result[0]);
//   });
// });

// module.exports = router;
