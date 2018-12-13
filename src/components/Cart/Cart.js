import React, { Component } from 'react';
import StripeCheckout from 'react-stripe-checkout';
import axios from 'axios';
import './Cart.css';
import { connect } from 'react-redux';
import {
  updateCartTotal,
  updateItemQuantity,
  cartCheckout
} from '../../ducks/reducer';

class Cart extends Component {
  constructor(props) {
    super(props);

    this.state = {
      cart: this.props.cart
    };
  }

  onToken = token => {
    token.card = void 0;
    axios
      .post('/api/checkout', { token, total: this.props.cartTotal * 100 })
      .then(res => {
        console.log(res);
      });
  };

  onCheckout = () => {
    this.props.cartCheckout();
    this.props.updateCartTotal();
    this.props.history.push('/success');
  };

  componentDidMount() {
    this.props.updateCartTotal();
  }

  onUpdateItem(type, product) {
    if (type === 'minus') {
      this.props.updateItemQuantity('minus', product);
    } else if (type === 'plus') {
      this.props.updateItemQuantity('plus', product);
    }

    if (product.itemQuantity < 1) {
      let newCart = this.state.cart.filter(
        item => item.product_id !== product.product_id
      );
      this.setState({
        cart: newCart
      });
    }
  }

  render() {
    const { cart } = this.state;

    const mappedCart = cart.map((product, i) => {
      return (
        <div className="product-container" key={i}>
          <div className="image-container">
            <img src={product.main_image} alt="" className="img-fluid" />
          </div>
          <div className="text-container">
            <p className="product-title-cart">{product.title}</p>

            <p className="product-size">
              {product.size ? `Size: ${product.size}` : null}
            </p>

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
          <div className="col-sm-12 col-md-10 col-lg-7 mx-auto">
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
          </div>

          {cart.length ? (
            <div className="col-sm-12 col-md-4 col-lg-8  ml-auto">
              <StripeCheckout
                name="Sussy Clone"
                description="Stussy Clone Cart Checkout"
                image="https://seeklogo.com/images/S/Stussy-logo-1839D43DEE-seeklogo.com.png"
                token={this.onToken}
                stripeKey={process.env.REACT_APP_STRIPE_KEY}
                amount={this.props.cartTotal * 100}
                currency="USD"
                shippingAddress
                billingAddress
                zipCode
                closed={() => this.onCheckout()}
              >
                <button className="checkout-btn btn btn-block">Checkout</button>
              </StripeCheckout>
            </div>
          ) : (
            <div className="col-sm-12 col-md-6 mx-auto">
              <a href="/">
                <button className="continue-btn btn btn-block">
                  Continue Shopping
                </button>
              </a>
            </div>
          )}
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
  { updateCartTotal, updateItemQuantity, cartCheckout }
)(Cart);
