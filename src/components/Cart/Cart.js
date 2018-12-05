import React, { Component } from 'react';
import './Cart.css';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import {
  updateCartTotal,
  deleteCartItem,
  updateItemQuantity,
  updateCart
} from '../../ducks/reducer';

class Cart extends Component {
  constructor(props) {
    super(props);

    this.state = {
      cart: this.props.cart
    };
  }

  componentDidMount() {
    if (this.state.cart.length === 0) {
      return;
    } else {
      this.props.updateCartTotal();
    }
  }

  onUpdateItem(type, product) {
    if (type === 'minus') {
      this.props.updateItemQuantity('minus', product);
      this.props.updateCartTotal();
    } else if (type === 'plus') {
      this.props.updateItemQuantity('plus', product);
      this.props.updateCartTotal();
    }

    if (product.itemQuantity < 1) {
      let newCart = this.state.cart.filter(item => item.id !== product.id);
      this.setState({
        cart: newCart
      });
    }
  }

  render() {
    const { cart} = this.state;

    const mappedCart = cart.map((product, i) => {
      return (
        <div className="product-container" key={i}>
          <div className="image-container">
            <Link to={`/product/${product.gender}/${product.product_id}`}>
              <img src={product.main_image} alt="" className="img-fluid" />
            </Link>
          </div>
          <div className="text-container">
            <p className="product-title-cart">{product.title}</p>
            {/* <p className="product-color">Color: {product.color}</p> */}
            <p className="product-size">Size: {product.size}</p>

            <div className="price-container">
              <div className="product-qty-container">
                <span onClick={() => this.onUpdateItem('minus', product)}>
                  -
                </span>
                <span>{product.itemQuantity >= 1 && product.itemQuantity}</span>
                <span onClick={() => this.onUpdateItem('plus', product)}>
                  +
                </span>
              </div>
              <p>
                $
                {product.quantity === 1
                  ? product.price
                  : product.itemQuantity * product.price}
                .00
              </p>
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

            {cart.length ? (
              <div className="total-container">
                <p className="sub-total">
                  Sub total <span>${this.props.cartTotal}.00</span>
                </p>
                <p className="cart-total">
                  Total <span>${this.props.cartTotal}.00</span>
                </p>
              </div>
            ) : null}

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
  { updateCartTotal, deleteCartItem, updateItemQuantity, updateCart }
)(Cart);
