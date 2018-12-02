import React, { Component } from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';
import './MensProducts.css';

export default class MensProducts extends Component {
  constructor() {
    super();

    this.state = {
      products: []
    };
  }

  componentDidMount() {
    axios.get('/api/products').then(res => {
      this.setState({
        products: res.data
      });
    });
  }

  render() {
    const mappedProducts = this.state.products.map(product => {
      return (
        <Link to={`/product/${product.product_id}`} key={product.id}>
          <div className="my-3">
            <img
              src={product.main_image}
              alt={product.title}
              className="img-fluid"
            />
            <p className="text-center product-title">{product.title}</p>
            <p className="text-center product-price pb-3">${product.price}.00</p>
          </div>
          </Link>
      );
    });

    return (
      <div className="container">
        <div className="row">
          <div className="col-md-12">
            <h1 className="mens-title text-center pt-2">Mens</h1>
            {mappedProducts}
          </div>
        </div>
      </div>
    );
  }
}
