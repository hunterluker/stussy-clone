import React, { Component } from 'react';
import heroImg from '../../images/hero.jpg';
import globeImg from '../../images/Snowglobe-copy.jpg';
import mensImg from '../../images/week4-patchwork1.jpg';
import archiveImg from '../../images/img-22-11.jpg';
import hoodieImg from '../../images/stussy-hoodie.jpg';
import longImg from '../../images/longsleeve-tee.jpg';
import womensImg from '../../images/womens-img.jpg';
import './Home.css';

export default class Home extends Component {
  render() {
    return (
      <div className="home-section">
        <div className="container hero-container mb-3">
          <div className="row">
            <div className="col-12 col-md-12" />
            <div className="hero-text">
              <h1 className="section-title text-white">Mens New Arrivals</h1>
            </div>
            <div className="hero-img">
              <img src={heroImg} alt="hero-img" className="img-fluid" />
            </div>
          </div>
        </div>

        <div className="container features-container">
          <div className="row">
            <div className="col-12 col-md-12">
              <div className="accessories-img-container mb-3">
                <h2 className="section-title">Accessories</h2>
                <img src={globeImg} alt="snowglobe-img" className="img-fluid" />
              </div>
              <div className="mens-img-container mb-3">
                <h2 className="section-title">Mens Jackets</h2>
                <img src={mensImg} alt="snowglobe-img" className="img-fluid" />
              </div>
              <div className="archive-img-container mb-3">
                <h2 className="section-title">Stussy Archive</h2>
                <img
                  src={archiveImg}
                  alt="snowglobe-img"
                  className="img-fluid"
                />
              </div>

              <div className="accessories-img-container mb-3">
                <h2 className="section-title text-white">
                  Mens Hoodies & Sweaters
                </h2>
                <img
                  src={hoodieImg}
                  alt="snowglobe-img"
                  className="img-fluid"
                />
              </div>
              <div className="mens-img-container mb-3">
                <h2 className="section-title">Long Sleeve Tees</h2>
                <img src={longImg} alt="snowglobe-img" className="img-fluid" />
              </div>
              <div className="archive-img-container mb-3">
                <h2 className="section-title text-white">
                  Womens New Arrivals
                </h2>
                <img
                  src={womensImg}
                  alt="snowglobe-img"
                  className="img-fluid"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
