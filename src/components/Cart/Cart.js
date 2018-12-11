import React, { Component } from 'react';
import StripeCheckout from 'react-stripe-checkout';
import axios from 'axios';
import './Cart.css';
import { connect } from 'react-redux';
import { updateCartTotal, updateItemQuantity } from '../../ducks/reducer';

class Cart extends Component {
  constructor(props) {
    super(props);

    this.state = {
      cart: this.props.cart,
      cartTotal: this.props.cartTotal
    };
  }

  onToken = token => {
    token.card = void 0;
    axios
      .post('/api/checkout', { token, total: this.state.cartTotal * 100 })
      .then(res => {
        console.log(res);
      });
  };

  componentDidMount() {
    if (this.state.cartTotal === 0) {
      let total = this.props.cartTotal;

      this.state.cart.forEach(item => (total += item.price));
      this.setState(() => ({
        cartTotal: total
      }));

      this.props.updateCartTotal();
    } else {
      this.props.updateCartTotal();
      this.setState(() => ({
        cartTotal: this.props.cartTotal
      }));
    }
  }

  onUpdateItem(type, product) {
    let newTotal = this.state.cartTotal;
    if (type === 'minus') {
      this.props.updateItemQuantity('minus', product);
      this.state.cart.forEach(item => (newTotal -= item.price));
      this.setState(() => ({
        cartTotal: newTotal
      }));
    } else if (type === 'plus') {
      this.props.updateItemQuantity('plus', product);
      this.state.cart.forEach(item => (newTotal += item.price));
      this.setState(() => ({
        cartTotal: newTotal
      }));
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
              <StripeCheckout
                name="Sussy Clone"
                description="Stussy Clone Cart Checkout"
                image="http://via.placeholder.com/100x100"
                token={this.onToken}
                stripeKey={process.env.REACT_APP_STRIPE_KEY}
                amount={this.state.cartTotal * 100}
              >
                <button className="checkout-btn btn btn-block">Checkout</button>
              </StripeCheckout>
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
  { updateCartTotal, updateItemQuantity }
)(Cart);
