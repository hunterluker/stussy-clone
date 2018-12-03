const initialState = {
  cart: [],
  mainProductImage: '',
  cartTotal: 0,
  cartQuantity: 0
};


const ADD_TO_CART = 'ADD_TO_CART';
const UPDATE_PRODUCT_IMAGE = 'UPDATE_PRODUCT_IMAGE';

export default function reducer(state = initialState, action) {
  switch (action.type) {
    case ADD_TO_CART:

      state.cartQuantity++

      const newCart = [...state.cart, action.payload]

      return Object.assign({}, state, {cart: newCart})
    case UPDATE_PRODUCT_IMAGE:
      return Object.assign({}, state, { mainProductImage: action.payload });
    default:
      return state;
  }
}

export function addToCart(product, image) {
  return {
    type: ADD_TO_CART,
    payload: product,
    payload2: image
  }
}

export function updateProductImage(imgUrl) {
  return {
    type: UPDATE_PRODUCT_IMAGE,
    payload: imgUrl
  };
}
