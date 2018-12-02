import React, { Component } from 'react';
import axios from 'axios';
import './DetailProduct.css';
import { connect } from 'react-redux';
import { updateProductImage } from '../../ducks/reducer';

class DetailProduct extends Component {
  constructor(props) {
    super(props);

    this.state = {
      product: {},
      mainProductImage: this.props.selectedImage,
      size: ''
    };

    this.updateProductImage = this.updateProductImage.bind(this)
  }

  componentDidMount() {
    axios.get(`/api/product/${this.props.match.params.id}`).then(res => {
      this.setState({
        product: res.data[0],
        mainProductImage: res.data[0].main_image
      });
      this.props.updateProductImage(res.data[0].main_image)
    });
  }

  onSizeSelection(size) {
    this.setState({
      size: size
    })
  }


  updateProductImage(imgUrl) {
    this.props.updateProductImage(imgUrl)
    this.setState({
      mainProductImage: imgUrl
    })
  }

  render() {
    const { product } = this.state;
    return (
      <div className="container pt-2">
        <div className="row">
          <div className="col-md-12">
            <img
              src={
                this.state.mainProductImage
                  ? this.state.mainProductImage
                  : product.main_image
              }
              alt=""
              className="img-fluid"
            />
            <p className="product-title font-weight-bold pt-3">
              {product.title}
            </p>
            <p className="product-price py-3 mb-2">${product.price}.00</p>

            <div className="color-selection">
              <img
                src={product.image1 ? product.image1 : null}
                alt=""
                className="img-fluid"
                onClick={() => {
                  this.updateProductImage(product.image1);
                }}
              />
              <img
                src={product.image2 ? product.image2 : null}
                alt=""
                className="img-fluid"
                onClick={() => {
                  this.updateProductImage(product.image2);
                }}
              />
              <img
                src={product.image2 ? product.image3 : null}
                alt=""
                className="img-fluid"
                onClick={() => {
                  this.updateProductImage(product.image3);
                }}
              />

              {!product.sizes ? (
                <div className="sizes-container mt-3 mb-1">
                  <button onClick={() => this.onSizeSelection('S')}>
                    S
                  </button>{' '}
                  <button onClick={() => this.onSizeSelection('M')}>
                    M
                  </button>{' '}
                  <button onClick={() => this.onSizeSelection('L')}>
                    L
                  </button>{' '}
                  <button onClick={() => this.onSizeSelection('XL')}>
                    XL
                  </button>{' '}
                  <button onClick={() => this.onSizeSelection('XLL')}>
                    XLL
                  </button>
                </div>
              ) : null}

              <button className="add-cart-btn btn btn-block py-3 mt-3" disabled={!this.state.size ? true : false}>
                Add to bag
              </button>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

function mapStateToProps(state) {
  return {
    selectedImage: state.mainProductImage
  };
}

export default connect(
  mapStateToProps,
  { updateProductImage }
)(DetailProduct);
