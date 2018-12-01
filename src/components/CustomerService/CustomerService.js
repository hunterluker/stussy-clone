import React, { Component } from 'react';
import './CustomerService.css';

export default class CustomerService extends Component {
  render() {
    return (
      <div className="container">
        <div className="row">
          <div className="col-md-12">
            <button className="customer-service btn btn-block mt-2 mb-4">
              Customer Service
            </button>
            <h2 className="service-title">Contact Us</h2>
            <p className="service-p">
              Have questions, comments, suggestions? Hit us up!
            </p>

            <form>
              <input
                type="text"
                placeholder="Name*"
                className="form-control py-2 my-3"
              />
              <input
                type="text"
                placeholder="Phone*"
                className="form-control py-2 my-3"
              />
              <input
                type="email"
                placeholder="Email*"
                className="form-control py-2 my-3"
              />
              <textarea
                className="form-control my-3"
                name=""
                id=""
                cols="30"
                rows="6"
              />
              <button className="submit-btn btn btn-block">Submit</button>
            </form>

            <div className="address-container mt-4">
              <p><strong>Stussy, Inc.</strong></p>
              <p>17426 Daimler Street</p>
              <p>Irvine, CA 92614</p>
              <p>USA</p>
              <p>1-(888)-9STUSSY (978.8779)</p>
              <p>INFO@STUSSY.COM</p>
              <p>
                <strong>(No public access at Stussy HQ)</strong>
              </p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
