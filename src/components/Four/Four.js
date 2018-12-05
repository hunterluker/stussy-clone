import React from 'react';
import { Link } from 'react-router-dom';
import './Four.css'

export default function Four() {
  return (
    <div className="container">
      <div className="four-container">
        <h1 className="text-center">404</h1>
        <p className="text-center">Sorry this page does not exist.</p>
        <Link to="/">
          <button className="btn btn-block">Back To Home</button>
        </Link>
      </div>
    </div>
  );
}
