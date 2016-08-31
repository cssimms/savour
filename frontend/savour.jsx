import React from 'react';
import ReactDom from 'react-dom';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementsById('content');
  ReactDom.render(<div>Loaded!</div>, root);
});
