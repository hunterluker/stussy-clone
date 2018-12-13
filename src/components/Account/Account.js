import React, { Component } from 'react';
import './Account.css';

export default class Account extends Component {
  render() {
    return (
      <div className="container pt-2">
        <div className="row">
          <div className="col-sm-8 col-md-8 col-lg-5 mx-auto">
            <h1 className="account-title text-center pb-5 mb-2">Account</h1>
            <h2 className="account-subtitle pb-3">New Customers</h2>
            <p className="account-p">
              By creating an account with our store, you will be able to move
              through the checkout process faster, store multiple shipping
              addresses, view and track your orders in your account and more.
            </p>
            <button className="create-account-btn btn btn-block">
              Create Account
            </button>

            <h2 className="register-subtitle pb-3 pt-5">
              Registered Customers
            </h2>
            <input
              type="text"
              placeholder="Email Address*"
              className="form-control py-2 my-3"
            />
            <input
              type="password"
              placeholder="Password*"
              className="form-control py-2 my-3"
            />
            <button className="login-btn btn btn-block">Login</button>
          </div>
        </div>
      </div>
    );
  }
}
