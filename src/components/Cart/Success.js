import React from 'react';

export default function Success() {
  return (
    <div className="container">
      <div className="row">
        <div className="col-md-12 my-5">
          <h3 className="text-center mt-5 text-bold text-uppercase">Success</h3>
          <p className="text-center text-uppercase">
            Thank you for your purchase!
          </p>
          <a href="/">
            <button className="continue-btn btn btn-block mt-5">
              Continue Shopping
            </button>
          </a>
        </div>
      </div>
    </div>
  );
}
