import React, { Component } from 'react';
import NavMenu from './NavMenu';
import brandImg from '../../images/stussy-stock-logo.svg';
import cartImg from '../../images/shopping-bag.svg';
import { Link } from 'react-router-dom';
import './Header.css';
import { connect } from 'react-redux';

class Header extends Component {
  constructor(props) {
    super(props);

    this.state = {
      cart: this.props.cartQuantity,
      hidden: true,
      loaded: false
    };

    this.toggleMenu = this.toggleMenu.bind(this);
  }

  toggleMenu() {
    this.setState(prevState => ({
      hidden: !prevState.hidden
    }));

    this.setState({
      loaded: true
    });
  }

  render() {
    const { hidden, loaded, cartQuantity } = this.state;
    console.log(this.state.cart);
    return (
      <div className="header-wrapper">
        <header className="header">
          <nav className="navbar navbar-expand-lg navbar-light">
            <button
              onClick={() => this.toggleMenu()}
              className="navbar-toggler"
            >
              <span className="navbar-toggler-icon" />
            </button>

            <a href="/" className="navbar-brand">
              <img
                src={brandImg}
                alt="stussy-logo"
                width="60px"
                className="mt-2"
              />
            </a>
            <div className="cart-container">
              <Link to="/cart">
                <img
                  src={cartImg}
                  alt="cart-img"
                  width="24px"
                  height="auto"
                  className="mb-1"
                  onClick={!this.state.hidden ? () => this.toggleMenu() : null}
                />
              </Link>
              {<span className="cart-quantity">{cartQuantity}</span>}
            </div>
          </nav>
        </header>

        {loaded === false ? null : hidden === false ? (
          <NavMenu toggle={this.toggleMenu} />
        ) : (
          <NavMenu menuClose />
        )}
      </div>
    );
  }
}

function mapStateToProps({ cartQuantity }) {
  return {
    cartQuantity
  };
}

export default connect(
  mapStateToProps,
  {}
)(Header);
