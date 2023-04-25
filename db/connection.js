const mysql = require('mysql2');
const dotenv = require('dotenv');
dotenv.config();

const host = process.env.DATABASE_HOST
const user = process.env.DATABASE_USER
const password = process.env.DATABASE_PASSWORD
const port = process.env.DATABASE_PORT

const con = mysql.createConnection({
  host, user, password, port
});

con.connect((err) => {
  try {
    if (err) {
      console.log(err)
      con.end();
    }
  } catch {
    console.log(`Can't contact db ${host}, ${user}, ${password}, ${port}`)
  }
});

module.exports = con;
