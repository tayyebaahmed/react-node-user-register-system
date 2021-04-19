# react-node-user-register-system
It is a simple react project that helps to put data in the MySQL and retrieve it. It is a registration form page through which user can register and send data into the MySQL database, and retrieve the data back by clicking on the show button. <br />

# Setup
You should have Node.js installed and XAMPP Control Panel or any other software to access your MySQL database.
After downloading the folders, through your terminal <br />
`cd client` and `npm install` <br />
then  <br />
`cd server`and `npm install` <br /> <br />

Import the test.sql file in your MySQL database. <br /> <br />

Modify below code to suit your database details: <br />
`const db = mysql.createConnection({ 
    user: 'root',
    host: 'localhost',
    password: '',
    database: 'test',
}) ` <br /> <br />
Then in the end `cd server` folder and type `node index.js` to start your node server <br />
And finally `cd client` and run `npm start`
