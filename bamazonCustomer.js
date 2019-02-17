var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "*ghandi21",
  database: "bamazonDB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  showProducts();
});

function showProducts() {
  let inventoryQuery = "SELECT * FROM products";
  connection.query(inventoryQuery, function(err, res) {
    if (err) throw err;

    // Log all results of the SELECT statement
    console.log(res);
    buyProducts();
    // connection.end();
  });
}

// function to handle buying new products
function buyProducts() {
    // prompt for info about the item being purchased
    inquirer
      .prompt([
        {
          name: "item_id",
          type: "input",
          message: "What is the item_id of the item you would like to buy?"
        },
        {
          name: "quantity",
          type: "input",
          message: "How many would you like to buy?",
          validate: function(value){
            if (isNaN(value) === false) {
                return true;
              }
              return false;
            }
        },
      ])
      .then(function(answer) {
        // when finished prompting, buy product and update inventory
        let productLookup = 'SELECT * FROM products WHERE item_id=?';
        
        connection.query(productLookup,
            [
                {
                    item_id: answer.item_id,
                }
            ],
          function(err, results, fields) {
            if (err) throw err;
            return console.log(results.item_id);
    
          }
        );
      });
  }
