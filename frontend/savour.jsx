import React from 'react';
import ReactDom from 'react-dom';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('content');
  console.log("hit the event listener");
  ReactDom.render(<div>Loaded!</div>, root);
});
