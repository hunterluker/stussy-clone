import React, { Component } from 'react';
import NavMenu from './NavMenu';
import brandImg from '../../images/stussy-stock-logo.svg';
import cartImg from '../../images/shopping-bag.svg';
import { Link } from 'react-router-dom';
import './Header.css';

export default class Header extends Component {
  constructor() {
    super();

    this.state = {
      hidden: true,
      loaded: false
    };

    this.toggleMenu = this.toggleMenu.bind(this)
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
            <Link to="/">
              <img
                src={cartImg}
                alt="cart-img"
                width="24px"
                height="auto"
                className="mb-1"
              />
            </Link>
          </nav>
        </header>

        {loaded === false ? null : hidden === false ? (
          <NavMenu />
        ) : (
          <NavMenu menuClose />
        )}
      </div>
    );
  }
}
