import React, { Component } from 'react';
import axios from 'axios';
import './DetailProduct.css';

export default class DetailProduct extends Component {
  constructor(props) {
    super(props);

    this.state = {
      product: {}
    };
  }

  componentDidMount() {
    axios.get(`/api/product/${this.props.match.params.id}`).then(res => {
      this.setState({
        product: res.data[0]
      });
    });
  }

  render() {
      const {product} = this.state;
    return (
      <div className="container pt-2">
        <div className="row">
          <div className="col-md-12">
            <img
              src={product.main_image}
              alt=""
              className="img-fluid"
            />
            <p className="product-title font-weight-bold pt-3">{product.title}</p>
            <p className="product-price py-3 mb-2">${product.price}.00</p>

            <div className="color-selection">
              <img
                src={product.image1 ? product.image1 : null}
                alt=""
                className="img-fluid"
              />
              <img
                src={product.image2 ? product.image2 : null}
                alt=""
                className="img-fluid"
              />
              <img
                src={product.image2 ? product.image3 : null}
                alt=""
                className="img-fluid"
              />

                {!product.sizes ? <div className="sizes-container mt-3 mb-1">
                    <button>S</button> <button>M</button> <button>L</button> <button>XL</button> <button>XLL</button>
                </div> : null}

              <button className="add-cart-btn btn btn-block py-3 mt-3">Add to bag</button>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
