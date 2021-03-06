import React from 'react';

export default function Success() {
  return (
    <div className="container">
      <div className="row">
        <div className="col-sm-12 col-md-6 col-lg-4 my-5 mx-auto">
          <h3 className="text-center mt-5 text-bold text-uppercase">Success</h3>
          <p className="text-center text-uppercase">
            Thank you for your purchase!
          </p>

          <a href="/" className="continue-link">
            <button className="continue-btn-2 btn btn-block mt-5">
              Continue Shopping
            </button>
          </a>
        </div>
      </div>
    </div>
  );
}
