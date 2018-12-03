import React, { Component } from 'react';
import './Cart.css';
import { connect } from 'react-redux';

class Cart extends Component {
  constructor(props) {
    super(props);

    this.state = {
      cart: this.props.cart,
      cartTotal: this.props.cartTotal
    };
  }
  render() {
    const { cart } = this.state;

    const mappedCart = cart.map(product => {
      return (
        <div className="product-container" key={product.product_id}>
          <div className="image-container">
            <img src={product.main_image} alt="" className="img-fluid" />
          </div>
          <div className="text-container">
            <p className="product-title-cart">{product.title}</p>
            <p className="product-color">Color: {product.color}</p>
            <p className="product-size">Size: {product.size}</p>

            <div className="price-container">
              <div className="product-qty-container">
                <span>-</span>
                <span>{1}</span>
                <span>+</span>
              </div>
              <p>${product.price}.00</p>
            </div>
          </div>
        </div>
      );
    });
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

            {mappedCart}

            {cart.length ? <div className="total-container">
              <p className="sub-total">Sub total <span>${45}.00</span></p>
              <p className="cart-total">Total <span>${45}.00</span></p>
            </div> : null}

            {cart.length ? (
              <a href="/">
                <button className="checkout-btn btn btn-block">Checkout</button>
              </a>
            ) : (
              <a href="/">
                <button className="continue-btn btn btn-block">
                  Continue Shopping
                </button>
              </a>
            )}
          </div>
        </div>
      </div>
    );
  }
}

function mapStateToProps({ cart, cartTotal }) {
  return {
    cart,
    cartTotal
  };
}

export default connect(
  mapStateToProps,
  {}
)(Cart);
