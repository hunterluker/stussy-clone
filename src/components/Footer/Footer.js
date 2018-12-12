import React from 'react';
import { Link } from 'react-router-dom';
import MediaQuery from 'react-responsive';
import './Footer.css';

export default function Footer() {
  return (
    <div>
      <footer className="footer my-4 footer-one">
        <div className="container">
          <div className="row">
            <div className="col-md-12 text-uppercase pt-5 text-center">
              <div
                className="newsletter"
                data-toggle="modal"
                data-target="#newsletterModal"
              >
                <span className="text-dark">Newsletter</span>
              </div>
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

      <MediaQuery query="(min-device-width: 768px)">
        <footer className="footer my-4">
          <div className="container">
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

            <div className="row">
              <div className="col-12 col-md-12 text-uppercase footer-two">
                <div
                  className="newsletter"
                  data-toggle="modal"
                  data-target="#newsletterModal"
                >
                  <span className="text-dark">Newsletter</span>
                </div>

                <p className="copy-right-two">&copy; 2018 Stussy</p>

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
            </div>
          </div>
        </footer>
      </MediaQuery>

      {/* Newsletter Modal */}
      <div className="modal fade" id="newsletterModal">
        <div
          className="modal-dialog modal-dialog-centered modal-sm"
          role="document"
        >
          <div className="modal-content">
            <div className="modal-body">
              <button
                type="button"
                className="close"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true">&times;</span>
              </button>
              <p className="newsletter-p">
                Sign up to recieve email updates on all the latest drops.
              </p>
              <input
                type="text"
                placeholder="EMAIL ADDRESS*"
                className="form-control py2 my-2 news-input"
              />

              <div className="form-check mt-3">
                <input type="checkbox" className="form-check-input" />
                <label htmlFor="male">Mens</label>
              </div>
              <div className="form-check">
                <input type="checkbox" className="form-check-input" />
                <label htmlFor="womens">Womens</label>
              </div>

              <button className="newsletter-btn btn btn-block">
                Subscribe
              </button>

              <p className="unsubscribe">
                You may unsubscribe from our list at any time. Visit our Privacy
                Policy for more information.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
