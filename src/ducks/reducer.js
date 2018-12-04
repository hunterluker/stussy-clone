const initialState = {
  cart: [],
  mainProductImage: '',
  cartTotal: 0,
  cartQuantity: 0
};

const ADD_TO_CART = 'ADD_TO_CART';
const UPDATE_PRODUCT_IMAGE = 'UPDATE_PRODUCT_IMAGE';
const UPDATE_CART_TOTAL = 'UPDATE_CART_TOTAL';
const DELETE_CART_ITEM = 'DELETE_CART_ITEM';

export default function reducer(state = initialState, action) {
  switch (action.type) {
    case ADD_TO_CART:
      state.cartQuantity++;

      const newCart = [...state.cart, action.payload];

      return Object.assign({}, state, { cart: newCart });
    case UPDATE_CART_TOTAL:
      let total = 0;

      state.cart.forEach(item => (total += item.price));

      return Object.assign({}, state, { cartTotal: total });

    case DELETE_CART_ITEM:

    state.cartQuantity--

    let cart =  state.cart.filter(item => item.id !== action.payload)

    return Object.assign({}, state, { cart });

    case UPDATE_PRODUCT_IMAGE:
      return Object.assign({}, state, { mainProductImage: action.payload });
    default:
      return state;
  }
}

export function addToCart(product) {
  return {
    type: ADD_TO_CART,
    payload: product
  };
}

export function deleteCartItem(id) {
  return {
    type: DELETE_CART_ITEM,
    payload: id
  }
}

export function updateCartTotal() {
  return {
    type: UPDATE_CART_TOTAL
  };
}

export function updateProductImage(imgUrl) {
  return {
    type: UPDATE_PRODUCT_IMAGE,
    payload: imgUrl
  };
}
