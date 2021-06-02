// Require Express - a web server for Node.js
let express = require('express');
let bodyParser = require('body-parser');

// import stripe payment gateway
let Stripe = require('stripe');
const stripe = new Stripe('sk_test_NzHkwYglPCxxPr9NXGgBrhTy');

// Require the mysql module that let's us
// speak with a mysql server
let mysql = require('mysql');

// Create a new connection
// using correct credentials
let db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'mysql',
  database: 'sellaphone'
});

// Connect to the database
db.connect();

// Create a new web server
let app = express();
app.use(bodyParser.json({limit: '50mb'}));

// Serve files from the www folder
app.use(express.static('www'));

// A route with order data from MySQL, served as JSON
app.get('/api/orders', function (req, res) {
  // make the query to the database
  db.query('SELECT * FROM orders', function (error, results) {
    // Send the error if there exists an error
    // otherwise the results of the query to the browser as JSON
    res.json(error || results);
  });
});

// A route with phones data from MySQL, served as JSON
app.get('/api/phones', function (req, res) {
  // make the query to the database
  db.query('SELECT * FROM phones', function (error, results) {
    // Send the error if there exists an error
    // otherwise the results of the query to the browser as JSON
    res.json(error || results);
  });
});

// A route with contracts data from MySQL, served as JSON
app.get('/api/contracts', function (req, res) {
  // make the query to the database
  db.query('SELECT * FROM contracts', function (error, results) {
    // Send the error if there exists an error
    // otherwise the results of the query to the browser as JSON
    res.json(error || results);
  });
});

// A route with datas data from MySQL, served as JSON
app.get('/api/datas', function (req, res) {
  // make the query to the database
  db.query('SELECT * FROM datas', function (error, results) {
    // Send the error if there exists an error
    // otherwise the results of the query to the browser as JSON
    res.json(error || results);
  });
});

let wantedFields = ['first_name', 'phone', 'contract', 'data', 'boomy_bass_box', 'cloudy_insurance', 'recognize_face', 'order-placed', 'price', 'last_name', 'phone_number', 'email', 'street', 'zip', 'city'];

// receive data
app.post('/api/orders', function (req, res) {
  // pick wanted fields
  for(let field in req.body){
    if(!wantedFields.includes(field)){
      delete(req.body[field]);
    }
  }
  payWithStripe(req, res, (req, res, charge)=>{
    // make the query to the database (saving status to the db would be helpful..)
    db.query('INSERT INTO orders SET ?', req.body, function (error, results) {
      res.json(error || {results:results, charge: charge});
    });
  })
});

async function payWithStripe(req, res, next){
  const customer = await stripe.customers.create({
    email: req.body.email,
  });
  console.log(customer.id);
  let source = await stripe.customers.createSource(customer.id, {
    source: 'tok_visa'
  });
  let charge = await stripe.charges.create({
    amount: req.body.price * 100, // SEK ören
    currency: 'SEK',
    customer: source.customer
  });
  next(req, res, charge)
}


// Start the web server at a port
// so it can listen to traffic from a browser
app.listen(3000, function () {
  console.log('Sellaphone API running on port 3000');
});







