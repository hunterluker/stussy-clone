import React from 'react';
import {Switch, Route} from 'react-router-dom';
import Home from './components/Home/Home';
import Cart from './components/Cart/Cart'
import Account from './components/Account/Account'
import CustomerService from './components/CustomerService/CustomerService';
import Chapters from './components/Chapters/Chapters';
import MensProducts from './components/MensProducts/MensProducts';
import DetailProduct from './components/DetailProduct/DetailProduct';

export default (
    <Switch>
        <Route exact path="/" component={Home}/>
        <Route path="/account" component={Account}/>
        <Route path="/cart" component={Cart}/>
        <Route path="/customerservice" component={CustomerService}/>
        <Route path="/chapters" component={Chapters}/>
        <Route path="/mens" component={MensProducts}/>
        <Route path="/product/:id" component={DetailProduct} />
    </Switch>
)