import React, { Component } from 'react';
import { HashRouter as Router } from 'react-router-dom';
import ScrollToTop from './ScrollToTop';
import Header from './components/Header/Header';
import Footer from './components/Footer/Footer';
import routes from './routes';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Spinner from 'react-spinkit';
import { Provider } from 'react-redux';
import { PersistGate } from 'redux-persist/integration/react';
import {persistor, store} from './store';

class App extends Component {
  constructor() {
    super();

    this.state = {
      loading: false
    };
  }

  componentDidMount() {
    setTimeout(
      function() {
        this.setState({
          loading: true
        });
      }.bind(this),
      2000
    );
  }
  render() {
    return (
      <Provider store={store}>
        <PersistGate loading={null} persistor={persistor}>
          <Router>
            <ScrollToTop>
              <div className="App">
                {this.state.loading === false ? (
                  <div className="loader">
                    <Spinner name="pacman" />
                  </div>
                ) : (
                  <div>
                    {' '}
                    <Header /> {routes} <Footer />
                  </div>
                )}
              </div>
            </ScrollToTop>
          </Router>
        </PersistGate>
      </Provider>
    );
  }
}

export default App;
