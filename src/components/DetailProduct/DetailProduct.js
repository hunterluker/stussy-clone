import React, { Component } from 'react';
import uuid from 'uuid';
import axios from 'axios';
import './DetailProduct.css';
import { connect } from 'react-redux';
import { updateProductImage, addToCart } from '../../ducks/reducer';
import Spinner from 'react-spinkit';

class DetailProduct extends Component {
  constructor(props) {
    super(props);

    this.state = {
      product: {},
      mainProductImage: this.props.selectedImage,
      size: '',
      loading: false
    };

    this.updateProductImage = this.updateProductImage.bind(this);
  }

  componentDidMount() {
    axios
      .get(
        `/api/product/${this.props.match.params.gender}/${
          this.props.match.params.id
        }`
      )
      .then(res => {
        this.props.updateProductImage(res.data[0].main_image);
        this.setState({
          product: res.data[0],
          mainProductImage: res.data[0].main_image,
          loading: true
        });
      });
  }

  onSizeSelection(size) {
    this.setState({
      size: size
    });
  }

  addToCart(product) {
    const cartProduct = {
      ...product,
      product_id: uuid(),
      size: this.state.size,
      main_image: this.state.mainProductImage,
      itemQuantity: 1
    };
    this.props.addToCart(cartProduct);
    this.props.history.push('/cart');
  }

  updateProductImage(imgUrl) {
    this.props.updateProductImage(imgUrl);
    this.setState({
      mainProductImage: imgUrl
    });
  }

  render() {
    const { product, mainProductImage } = this.state;
    return (
      <React.Fragment>
        {this.state.loading === false ? (
          <div className="product-load">
            <Spinner name="line-spin-fade-loader" />
          </div>
        ) : (
          <div className="container pt-2">
            <div className="row">
              <div className="col-md-12">
                <img
                  src={mainProductImage ? mainProductImage : product.main_image}
                  alt=""
                  className="img-fluid"
                />
                <p className="product-title font-weight-bold pt-3">
                  {product.title}
                </p>
                <p className="product-price py-3 mb-2">${product.price}.00</p>

                <div className="color-selection">
                  {product.image1 ? (
                    <img
                      src={product.image1}
                      alt=""
                      className="img-fluid"
                      onClick={() => {
                        this.updateProductImage(product.image1);
                      }}
                    />
                  ) : null}
                  {product.image2 ? (
                    <img
                      src={product.image2}
                      alt=""
                      className="img-fluid"
                      onClick={() => {
                        this.updateProductImage(product.image2);
                      }}
                    />
                  ) : null}
                  {product.image3 ? (
                    <img
                      src={product.image3}
                      alt=""
                      className="img-fluid"
                      onClick={() => {
                        this.updateProductImage(product.image3);
                      }}
                    />
                  ) : null}

                  {product.gender !== 'accessories' ? (
                    <div className="sizes-container mt-3 mb-1">
                      {product.gender === 'womens' ? (
                        <React.Fragment>
                          <button
                            id={
                              this.state.size === 'XS' ? 'size-clicked' : null
                            }
                            onClick={() => this.onSizeSelection('XS')}
                          >
                            XS
                          </button>{' '}
                        </React.Fragment>
                      ) : null}
                      <button
                        id={this.state.size === 'S' ? 'size-clicked' : null}
                        onClick={() => this.onSizeSelection('S')}
                      >
                        S
                      </button>{' '}
                      <button
                        id={this.state.size === 'M' ? 'size-clicked' : null}
                        onClick={() => this.onSizeSelection('M')}
                      >
                        M
                      </button>{' '}
                      <button
                        id={this.state.size === 'L' ? 'size-clicked' : null}
                        onClick={() => this.onSizeSelection('L')}
                      >
                        L
                      </button>{' '}
                      {product.gender === 'womens' ? null : (
                        <React.Fragment>
                          <button
                            id={this.state.size === 'XL' ? 'size-clicked' : null}
                            onClick={() => this.onSizeSelection('XL')}
                          >
                            XL
                          </button>{' '}
                          <button
                            id={
                              this.state.size === 'XLL' ? 'size-clicked' : null
                            }
                            onClick={() => this.onSizeSelection('XLL')}
                          >
                            XLL
                          </button>
                        </React.Fragment>
                      )}
                    </div>
                  ) : null}

                  <button
                    onClick={() => this.addToCart(product)}
                    className="add-cart-btn btn btn-block py-3 mt-3"
                    disabled={
                      !this.state.size && product.gender !== 'accessories'
                        ? true
                        : false
                    }
                  >
                    Add to bag
                  </button>
                </div>
              </div>
            </div>
          </div>
        )}
      </React.Fragment>
    );
  }
}

const mapStateToProps = state => {
  return {
    selectedImage: state.mainProductImage
  };
};

export default connect(
  mapStateToProps,
  { updateProductImage, addToCart }
)(DetailProduct);
