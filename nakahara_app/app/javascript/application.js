// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
// import "controllers"


// app/javascript/packs/application.js

import React from 'react';
import ReactDOM from 'react-dom';
import MyComponent from '../components/MyComponent';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <React.StrictMode>
      <MyComponent />
    </React.StrictMode>,
    document.getElementById('root') // あなたのアプリケーションに合わせて適切なDOM要素を指定
  );
});