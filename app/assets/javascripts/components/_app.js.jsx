// import React from 'react';

// import { BrowserRouter as Router, Route, Link } from "react-router-dom";

// export default class App extends React.Component {
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      products: []
    };
  }

  componentDidMount() {
    // fetch('/api/v1/products', {
    fetch('/products', {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json'
      }
    }).then(response => response.json()).then(data => {
      this.setState({products: data});
    });
  }

  render(){
    return (
      <div>
        <h1>Products</h1>
        <ul>
          {this.state.products.map(product => {
            return (
              <li key={product.id}>
                <p>name: {product.name}</p>
                <p>price: {product.price}</p>
                <img src={product.img} />
              </li>
            );
          })}
        </ul>
      </div>
    )
  }
}

// export default Products;
