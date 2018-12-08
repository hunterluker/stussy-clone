import { createStore } from 'redux';
import { persistReducer, persistStore } from 'redux-persist';
import { composeWithDevTools } from 'redux-devtools-extension';
import storage from 'redux-persist/lib/storage';

import reducer from './ducks/reducer';

let persistConfig = {
  key: 'root',
  storage
};

const persistedReducer = persistReducer(persistConfig, reducer);

export default () => {
  let store = createStore(persistedReducer, composeWithDevTools());
  let persistor = persistStore(store);
  return { store, persistor };
};

export const store  = createStore(persistedReducer, composeWithDevTools());
export const persistor = persistStore(store);
