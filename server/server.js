require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const massive = require('massive');
const pc = require('./products_controller');
const sc = require('./stripe_controller');
const path = require('path');

let { SERVER_PORT, CONNECTION_STRING } = process.env;

const app = express();

app.use(express.static(`${__dirname}/../build`));

app.use(bodyParser.json());

massive(CONNECTION_STRING)
  .then(db => {
    app.set('db', db);
    console.log(`Connected to database`);
  })
  .catch(err => console.log(err));

// ENDPOINTS
app.get('/api/products', pc.getAllProducts);

app.get('/api/products/:gender', pc.getAllProductsByGender);

app.get('/api/product/:gender/:id', pc.getProduct);

// CHECKOUT
app.post('/api/checkout', sc.checkout);

app.listen(SERVER_PORT, () => {
  console.log(`Listening on port: ${SERVER_PORT}`);
});

app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, '../build/index.html'));
});
