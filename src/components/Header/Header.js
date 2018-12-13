import React, { Component } from 'react';
import NavMenu from './NavMenu';
import MediaQuery from 'react-responsive';
import brandImg from '../../images/stussy-stock-logo.svg';
import cartImg from '../../images/shopping-bag.svg';
import flagImg from '../../images/flag-us.svg';
import { Link } from 'react-router-dom';
import './Header.css';
import { connect } from 'react-redux';

class Header extends Component {
  constructor(props) {
    super(props);

    this.state = {
      hidden: true,
      loaded: false,
      searchToggle: false
    };

    this.toggleMenu = this.toggleMenu.bind(this);
  }

  onSearchToggle() {
    this.setState({
      searchToggle: true
    });
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
                <div className="navmenu-left ml-auto">
                  <Link to={`/products/${'mens'}`}>
                    <li className="nav-item">Mens</li>
                  </Link>
                  <Link to={`/products/${'womens'}`}>
                    <li className="nav-item">Womens</li>
                  </Link>
                  <Link to={`/products/${'accessories'}`}>
                    <li className="nav-item">Accessoreis</li>
                  </Link>
                  <Link to="/products">
                    <li className="nav-item">Collections</li>
                  </Link>
                </div>

                <div className="navmenu-right ml-auto">
                  <li
                    className="nav-item"
                    onClick={() => this.onSearchToggle()}
                  >
                    {this.state.searchToggle ? (
                      <input
                        className="header-search"
                        placeholder="SEARCH"
                        autoFocus
                      />
                    ) : (
                      'Search'
                    )}
                  </li>
                  <Link to="/account">
                    <li className="nav-item">Account</li>
                  </Link>
                  <Link to="/cart">
                    <li className="nav-item">
                      Shopping Bag {' '}
                      {
                        <span className="cart-quantity-2">
                          {this.props.cartQuantity <= 0
                            ? null
                            : '(' + this.props.cartQuantity + ')'}
                        </span>
                      }
                      
                    </li>
                  </Link>
                  <li>
                    <img src={flagImg} width="20px" alt="flag" />
                  </li>
                </div>
              </ul>
            </div>

            <MediaQuery query="(max-device-width: 991px)">
              <div className="cart-container">
                <Link to="/cart">
                  <img
                    className="cart-icon"
                    src={cartImg}
                    alt="cart-img"
                    width="24px"
                    height="auto"
                    className="mb-1"
                    onClick={
                      !this.state.hidden ? () => this.toggleMenu() : null
                    }
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
            </MediaQuery>
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
