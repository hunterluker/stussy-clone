import React from 'react';
import flagImg from '../../images/flag-us.svg';
import { Link } from 'react-router-dom';

export default function NavMenu(props) {
  return (
    <div className="nav">
      <div
        className={
          props.menuClose ? 'container menu menu-close' : 'container menu'
        }
      >
        <div className="nav-search">
          <input type="text" placeholder="SEARCH" width="100%" />
        </div>
        <ul className={props.menuClose ? 'navbar-menu d-none' : 'navbar-menu'}>
          <Link to={`/products/${'mens'}`}>
            <li onClick={() => props.toggle()}>Mens</li>
          </Link>
          <Link to={`/products/${'womens'}`}>
            <li onClick={() => props.toggle()}>Womens</li>
          </Link>
          <Link to={`/products/${'accessories'}`}>
            <li onClick={() => props.toggle()}>Accessories</li>
          </Link>
          <Link to='/products' >
            <li onClick={() => props.toggle()}>Collections</li>
          </Link>
          <Link to="/account">
            <li onClick={() => props.toggle()}>Account</li>
          </Link>
          <li>
            <img src={flagImg} width="20px" alt="flag" /> North America
          </li>
        </ul>
      </div>
    </div>
  );
}
