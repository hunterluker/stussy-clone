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
    const { hidden, loaded } = this.state;
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

            <div className="collapse navbar-collapse" id="navbarNav">
              <ul className="navbar-nav">
                <div className="navmenu-left">
                  <li className="nav-item">Mens</li>
                  <li className="nav-item">Womens</li>
                  <li className="nav-item">Accessoreis</li>
                  <li className="nav-item">Collections</li>
                </div>

                <div className="navmenu-right">
                  <li className="nav-item">Search</li>
                  <li className="nav-item">Account</li>
                  <li className="nav-item">ShoppingBag</li>
                </div>
              </ul>
            </div>

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
              {
                <span className="cart-quantity">
                  {this.props.cartQuantity <= 0
                    ? null
                    : this.props.cartQuantity}
                </span>
              }
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
