const express = require('express');
const app = express()
const mysql = require('mysql');
const cors = require('cors');

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    user: 'root',
    host: 'localhost',
    password: '',
    database: 'test',
})

app.post('/register', (req, res) => {
    const name = req.body.name;
    const age = req.body.age;
    const address = req.body.address;
    const mobile = req.body.mobile;

    db.query('INSERT INTO users (name, age, address, mobile) VALUES (?, ?, ?, ?)', 
    [name, age, address, mobile], 
    (err, result) => { if(err) console.log("Error: "+err); else res.send('Values Inserted!'); }
    );
})

app.get('/users', (req, res) => {
    db.query('SELECT * FROM users ORDER BY id DESC LIMIT 3', 
    (err, result) => { if(err) console.log("Error: "+err); else res.send(result); }
    );
})

app.listen(3001, () => {console.log("yay")})