import React, { Component } from 'react';
import { HashRouter as Router } from 'react-router-dom';
import Header from './components/Header/Header';
import Footer from './components/Footer/Footer';
import routes from './routes';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';

class App extends Component {
  
  render() {
    return (
      <Router>
        <div className="App">
         <Header />
         {routes}
         <Footer />
        </div>
      </Router>
    );
  }
}

export default App;
