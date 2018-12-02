const initalState = {
  mainProductImage: ''
};
const UPDATE_PRODUCT_IMAGE = 'UPDATE_PRODUCT_IMAGE';

export default function reducer(state = initalState, action) {
  switch (action.type) {
    case UPDATE_PRODUCT_IMAGE:
        console.log(action.payload)
      return Object.assign({}, state, { mainProductImage: action.payload });
    default:
      return {};
  }
}

export function updateProductImage(imgUrl) {
  return {
    type: UPDATE_PRODUCT_IMAGE,
    payload: imgUrl
  };
}
