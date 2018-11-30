import React from 'react';
import flagImg from '../../images/flag-us.svg';
import { Link } from 'react-router-dom';

export default function NavMenu(props) {
  return (
    <div>
      <div
        className={
          props.menuClose ? 'container menu menu-close' : 'container menu'
        }
      >
        <div className="nav-search">
          <input type="text" placeholder="SEARCH" width="100%" />
        </div>
        <ul className="navbar-menu">
          <Link to="/">
            <li>Mens</li>
          </Link>
          <li>Womens</li>
          <li>Accessories</li>
          <li>Collections</li>
          <li>Account</li>
          <li>
            <img src={flagImg} width="20px" alt="flag" /> North America
          </li>
        </ul>
      </div>
    </div>
  );
}