import React, { Component } from 'react';
import './Cart.css';

export default class Cart extends Component {
  constructor() {
    super();

    this.state = {
      cart: []
    };
  }
  render() {
    const { cart } = this.state;
    return (
      <div className="container pt-2">
        <div className="row">
          <div className="col-md-12">
            <h1 className="cart-title text-center">Shopping Bag</h1>
            {cart.length ? null : (
              <p className="no-itmes pb-2">
                You have no items in your shopping bag.
              </p>
            )}

            <a href="/">
              <button className="continue-btn btn btn-block">
                Continue Shopping
              </button>
            </a>
          </div>
        </div>
      </div>
    );
  }
}
