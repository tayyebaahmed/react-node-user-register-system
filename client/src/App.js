import { useState } from "react";
import "./App.css";
import Axios from 'axios';

function App() {
  const [name, setName] = useState("");
  const [age, setAge] = useState(0);
  const [address, setAddress] = useState("");
  const [mobile, setMobile] = useState(0);

  const [patientList, setPatientList] = useState([]);

  const patientRegistration = () => {
    Axios.post('http://localhost:3001/register', {
      name: name, 
      age: age, 
      address: address,
      mobile: mobile
    }).then(() => {
      alert('Registration Successful!');
    });
  }

  const getUsers = () => {
    Axios.get('http://localhost:3001/users').then((response) => {
      setPatientList(response.data)
    });
  }

  return (
    <div className="App">
      <div className="register-form">
        <h3>Registration Form</h3>
        <input
          type="text"
          name=""
          id=""
          placeholder="Enter Name"
          onChange={(event) => {
            setName(event.target.value);
          }}
        />
        <input type="number" name="" id="" placeholder="Enter Age" 
          onChange={(event) => {
            setAge(event.target.value);
          }}
        />
        <input type="text" name="" id="" placeholder="Enter Address"
          onChange={(event) => {
            setAddress(event.target.value);
          }}
        />
        <input type="text" name="" id="" placeholder="Enter Mobile No."
          onChange={(event) => {
            setMobile(event.target.value);
          }}
        />
        <button onClick={patientRegistration} >Register</button>
      </div>
      <div className="show-users">
      <button className="btn-show" onClick={getUsers} >Show Users</button>
      {patientList.map((val, key) => {
        return (
          <div className="user-record">
            <p><b>Name:</b>{val.name} <b>Age:</b>{val.age} <b>Address:</b>{val.address} <b>Mobile No:</b>{val.mobile}</p>
          </div>
        )
      })}
               
      </div>
    </div>
  );
}

export default App;
