const initialState = {
  cart: [],
  mainProductImage: '',
  cartTotal: 0,
  cartQuantity: 0
};

const ADD_TO_CART = 'ADD_TO_CART';
const CART_CHECKOUT = 'CART_CHECKOUT';
const UPDATE_PRODUCT_IMAGE = 'UPDATE_PRODUCT_IMAGE';
const UPDATE_CART_TOTAL = 'UPDATE_CART_TOTAL';
const UPDATE_ITEM_QUANTITY = 'UPDATE_ITEM_QUANTITY';

export default function reducer(state = initialState, action) {
  switch (action.type) {
    case ADD_TO_CART:
      state.cartQuantity++;

      let prevProduct = state.cart.find(
        el =>
          el.main_image === action.payload.main_image &&
          el.size === action.payload.size
      );

      if (prevProduct) {
        prevProduct.itemQuantity++;

        let newT = 0;

        state.cart.forEach(item => (newT += item.price));

        return Object.assign({}, state, {
          cart: [...state.cart],
          cartTotal: newT
        });
      }

      let newT = 0;

      state.cart.forEach(item => (newT += item.price));

      const newCart = [...state.cart, action.payload];

      return Object.assign({}, state, { cart: newCart, cartTotal: newT });
    case CART_CHECKOUT:
      return Object.assign({}, state, { cart: [], cartTotal: 0, cartQuantity: 0 });
    case UPDATE_CART_TOTAL:
      let total = 0;

      state.cart.forEach(item => (total += item.price * item.itemQuantity));

      return Object.assign({}, state, { cartTotal: total });

    case UPDATE_ITEM_QUANTITY:
      if (action.string === 'minus') {
        action.product.itemQuantity--;
        state.cartQuantity--;
      } else if (action.string === 'plus') {
        action.product.itemQuantity++;
        state.cartQuantity++;
      }

      let newTotal = 0;

      state.cart.forEach(item => (newTotal += item.price * item.itemQuantity));

      if (action.product.itemQuantity === 0) {
        let deletedItem = state.cart.filter(
          item => item.product_id !== action.product.product_id
        );

        return Object.assign({}, state, {
          cart: deletedItem,
          cartTotal: newTotal
        });
      }

      return {
        ...state,
        cart: state.cart.map(item => {
          if (item.product_id === action.product.product_id) {
            return action.product;
          }
          return item;
        }),
        cartTotal: newTotal
      };
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

export function cartCheckout() {
  return {
    type: CART_CHECKOUT
  };
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

export function updateItemQuantity(type, product) {
  return {
    type: UPDATE_ITEM_QUANTITY,
    string: type,
    product
  };
}
