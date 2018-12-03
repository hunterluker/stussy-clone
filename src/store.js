import { createStore } from 'redux';
import { composeWithDevTools } from 'redux-devtools-extension';
import reducer from './ducks/reducer';

const store = createStore(
  reducer,
  composeWithDevTools()
);

export default store;
