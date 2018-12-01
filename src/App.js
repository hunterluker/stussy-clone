import React, { Component } from 'react';
import { HashRouter as Router } from 'react-router-dom';
import Header from './components/Header/Header';
import Footer from './components/Footer/Footer';
import routes from './routes';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Spinner from 'react-spinkit';

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
      <Router>
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
      </Router>
    );
  }
}

export default App;
