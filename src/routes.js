import React from 'react';
import {Switch, Route} from 'react-router-dom';
import Home from './components/Home/Home';
import Cart from './components/Cart/Cart'
import Account from './components/Account/Account'
import CustomerService from './components/CustomerService/CustomerService';
import Chapters from './components/Chapters/Chapters';
import Products from './components/Products/Products';
import DetailProduct from './components/DetailProduct/DetailProduct';
import Four from './components/Four/Four';

export default (
    <Switch>
        <Route exact path="/" component={Home}/>
        <Route path="/account" component={Account}/>
        <Route path="/cart" component={Cart}/>
        <Route path="/customerservice" component={CustomerService}/>
        <Route path="/chapters" component={Chapters}/>
        <Route exact path="/products" component={Products}/>
        <Route path="/products/:gender" component={Products}/>
        <Route path="/product/:gender/:id" component={DetailProduct} />
        <Route component={Four}/>
    </Switch>
)