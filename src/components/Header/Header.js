import React from 'react';
import brandImg from '../../images/stussy-stock-logo.svg';
import cartImg from '../../images/shopping-bag.svg';
import { Link } from 'react-router-dom';
import './Header.css';

export default function Header() {
  return (
    <div className="header-wrapper">
      <header className="header">
        <nav className="navbar navbar-expand-lg navbar-light">
          <button className="navbar-toggler">
            <span className="navbar-toggler-icon" />
          </button>
          <a href="/" className="navbar-brand">
            <img src={brandImg} alt="stussy-logo" width="60px" className="mt-2" />
          </a>
          <Link to="/">
            <img src={cartImg} alt="cart-img" width="20px" height="auto" className="mb-1" />
          </Link>
        </nav>
      </header>
    </div>
  );
}
