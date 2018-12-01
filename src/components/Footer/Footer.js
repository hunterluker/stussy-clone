import React from 'react';
import { Link } from 'react-router-dom';
import './Footer.css';

export default function Footer() {
  return (
    <div>
      <footer className="footer my-4">
        <div className="container">
          <div className="row">
            <div className="col-md-12 text-uppercase pt-5 text-center">
              <Link to="/">
                <span className="text-dark">Newsletter</span>
              </Link>
            </div>
            <div className="col-md-12 text-uppercase pt-3 text-center">
              <ul className="d-flex social-list">
                <li>
                  <i className="fab fa-instagram" />
                </li>
                <li>
                  <i className="fab fa-twitter" />
                </li>
                <li>
                  <i className="fab fa-facebook" />
                </li>
                <li>
                  <i className="fab fa-vimeo" />
                </li>
              </ul>
            </div>
            <div className="col-md-12 text-uppercase pt-3 text-center">
              <ul className="m-0 p-0">
                <Link to="/customerservice">
                  <li className="mb-3">Customer Service</li>
                </Link>
                <li className="mb-3">
                  <Link to="/chapters">Chapters</Link>
                </li>
                <li className="mb-3">
                  <Link to="/">Archive</Link>
                </li>
              </ul>
            </div>
            <div className="col-md-12 text-uppercase pt-3 text-center">
              <p>&copy; 2018 Stussy</p>
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
}
