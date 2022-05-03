import { default as dat } from "./dat.gui.module.js";

class FOO {
  static ns = 'http://www.w3.org/2000/svg'
  constructor(width, height) {
    this.size = {};
  }
  foo() {
    return 42;
  }
}

const NAME = 'Jon Doe';
let foo = 42;
let bar = 42.0;
const func = () => {};
const func = function() {};
const rootApp = document.getElementById('app-root');
rootApp.innerHTML = `<p>Hello, ${NAME}</p>`
