import React from 'react';
import santaAna from '../../images/santa-ana.jpg';
import newYork from '../../images/new-york.jpg';
import toronto from '../../images/toronto.jpg';
import taipei from '../../images/taipei.jpg';
import telaviv from '../../images/tel-aviv.jpg';
import japan from '../../images/japan.jpg';
import './Chapters.css';

export default function Chapters() {
  return (
    <div className="container">
      <div className="row">
        <div className="col-sm-12 col-md-12 cold-lg-12">
          <h1 className="page-title text-center pt-2">North America</h1>
        </div>
        <div className="col-sm-12 col-md-4">
          <div className="chapter-container">
            <img src={santaAna} alt="santa-ana" className="img-fluid w-100" />
            <div className="chapter-location">
              <p>Stussy Arvchive Santa Ana</p>
              <p>200 E 4th St</p>
              <p>Santa Ana, Ca 92701</p>
              <p>(714) 760.4812</p>
            </div>
          </div>
        </div>

        <div className="col-sm-12 col-md-4">
          <div className="chapter-container mt-5">
            <img src={newYork} alt="New York" className="img-fluid w-100" />
            <div className="chapter-location">
              <p>Stussy New York</p>
              <p>176 Spring Street</p>
              <p>New York, NY 10012</p>
              <p>(212) 226.8493</p>
            </div>
          </div>
        </div>

        <div className="col-sm-12 col-md-4">
          <div className="chapter-container mt-5">
            <img src={toronto} alt="toronto" className="img-fluid w-100" />
            <div className="chapter-location">
              <p>Stussy Toronto</p>
              <p>241 Spadina ave #100A</p>
              <p>Toronto, on m5t3a8</p>
              <p>(416) 537.9600</p>
            </div>
          </div>
        </div>

        <div className="col-sm-12 col-md-12 cold-lg-12">
          <h1 className="page-title text-center pt-2 mt-5">International</h1>
        </div>

        <div className="col-sm-12 col-md-4">
          <div className="chapter-container">
            <img src={telaviv} alt="tel-aviv" className="img-fluid w-100" />
            <div className="chapter-location">
              <p>Stussy Tel Aviv</p>
              <p>34 Eli'ezer Kaplan St. </p>
              <p>Sarona, Tel Aviv 6473435</p>
              <p>+972-3-5096898</p>
            </div>
          </div>
        </div>

        <div className="col-sm-12 col-md-4">
          <div className="chapter-container mt-5">
            <img src={taipei} alt="taipei" className="img-fluid w-100" />
            <div className="chapter-location">
              <p>Stussy Taipei</p>
              <p>
                No. 7, Alley 69, Lane 161, Section 1, <br /> Dunhua South Road
              </p>
              <p>Da'an District, Taipei City, Taiwan</p>
              <p>+886-2-2751-2651</p>
            </div>
          </div>
        </div>

        <div className="col-sm-12 col-md-4">
          <div className="chapter-container mt-5">
            <img src={japan} alt="japan" className="img-fluid w-100" />
            <div className="chapter-location">
              <p>Stussy Tokyo</p>
              <p>Harajuku Chapter Store</p>
              <p>4-28-2 Jungumae, Houston Bldg.</p>
              <p>Shibuya-Ku Tokyo, Japan</p>
              <p>(03) 3479.6432</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
