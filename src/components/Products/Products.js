import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import Spinner from 'react-spinkit';
import axios from 'axios';
import './Products.css';

export default class Products extends Component {
  constructor(props) {
    super(props);

    this.state = {
      products: [],
      loading: false
    };
  }

  componentDidMount() {
    if (this.props.location.search) {
      axios
        .get(
          `/api/products/${this.props.match.params.gender}${
            this.props.location.search
          }`
        )
        .then(res => {
          this.setState({
            products: res.data,
            loading: true
          });
        });
    } else if (this.props.match.params.gender) {
      axios.get(`/api/products/${this.props.match.params.gender}`).then(res => {
        this.setState({
          products: res.data,
          loading: true
        });
      });
    } else {
      axios.get(`/api/products`).then(res => {
        this.setState({
          products: res.data,
          loading: true
        });
      });
    }
  }

  componentWillReceiveProps(newProps) {
    axios.get(`/api/products/${newProps.match.params.gender}`).then(res => {
      this.setState({
        products: res.data
      });
    });
  }

  render() {
    const mappedProducts = this.state.products.map(product => {
      return (
        <div className="col-sm-12 col-md-4 col-lg-3 product" key={product.id}>
          <Link to={`/product/${product.gender}/${product.product_id}`}>
            <div className="my-3">
              <img
                src={product.main_image}
                alt={product.title}
                className="img-fluid main-product-image"
              />
              <div className="product-text-container">
                <p className="text-center product-title">{product.title}</p>
                <p className="text-center product-price pb-3">
                  ${product.price}.00
                </p>
              </div>
            </div>
          </Link>
        </div>
      );
    });

    return (
      <React.Fragment>
        {this.state.loading === false ? (
          <div className="product-load">
            <Spinner name="line-spin-fade-loader" />
          </div>
        ) : (
          <div className="container">
            <div className="row">
              <div className="col-md-12">
                <h1 className="mens-title text-center pt-2">
                  {this.props.match.params.gender
                    ? this.props.match.params.gender
                    : 'All Products'}
                </h1>
                <div className="product-wrapper">{mappedProducts}</div>
              </div>
            </div>
          </div>
        )}
      </React.Fragment>
    );
  }
}
