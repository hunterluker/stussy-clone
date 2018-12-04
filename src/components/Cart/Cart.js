import React, { Component } from 'react';
import './Cart.css';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { updateCartTotal, deleteCartItem } from '../../ducks/reducer';

class Cart extends Component {
  constructor(props) {
    super(props);

    this.state = {
      cart: this.props.cart,
      itemCount: 1
    };
  }

  onItemCountUpdate(str, id) {
    if (str === '-') {
      this.setState(prevState => ({
        itemCount: prevState.itemCount - 1
      }));
    } else {
      this.setState(prevState => ({
        itemCount: prevState.itemCount + 1
      }));
    }

    

    if(this.state.itemCount  <= 1) {
      this.props.deleteCartItem(id);
      let newCart = this.state.cart.filter(item => item.id !== id);
      this.setState(() => ({
        cart: newCart
      }));
    }
  }

  componentDidMount() {
    if (this.state.cart.length === 0) {
      return;
    } else {
      this.props.updateCartTotal();
    }
  }



  render() {
    const { cart } = this.state;

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
            <p className="product-color">Color: {product.color}</p>
            <p className="product-size">Size: {product.size}</p>

            <div className="price-container">
              <div className="product-qty-container">
                <span
                  onClick={() => {
                    this.onItemCountUpdate('-', product.id);
                  }}
                >
                  -
                </span>
                <span>{this.state.itemCount >= 1 && this.state.itemCount}</span>
                <span onClick={() => this.onItemCountUpdate('+')}>+</span>
              </div>
              <p>${this.state.itemCount === 1 ? product.price : (this.state.itemCount * product.price)}.00</p>
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
                  Sub total <span>${this.props.cartTotal * this.state.itemCount}.00</span>
                </p>
                <p className="cart-total">
                  Total <span>${this.props.cartTotal * this.state.itemCount}.00</span>
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
  { updateCartTotal, deleteCartItem }
)(Cart);
