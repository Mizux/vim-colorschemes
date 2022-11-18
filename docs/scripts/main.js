import { default as dat } from "./dat.gui.module.js";
import { default as data} from "./data.js";
import * as color from "./color.js";

// Color Structure
let blob = {
  index: 42,
  color: "#500000",
  neighbors: 8
};

// First define Dat.Gui instances
let gui = new dat.GUI({ load: JSON });
// must be call before gui construction
//gui.remember(blob, 'Data');

let colorGUI = gui.addFolder("Color");
{
  colorGUI.add(blob, "index", 0, 255, 1).onChange(updateIndex);
  colorGUI.addColor(blob, "color").onChange(updateColor);
  colorGUI.add(blob, "neighbors", 1, 32, 1).onChange(updateNeighbors);
  colorGUI.open();
}

function updateIndex() {
  blob.color = data[blob.index].hexString;
  updateGUI(colorGUI);

  updateColor(blob.index);
}

function updateNeighbors() {
  updateColor();
}

function findClosestColor(hex, nb) {
  const targetRGB = color.HEX2sRGB(hex);
  const targetLAB = color.sRGB2CIELAB(targetRGB);
  console.log("Target: rgb:%o lab:%o (hex: %s)", targetRGB, targetLAB, hex);
  //const checkRGB = CIELAB2sRGB(targetLAB);
  //console.log("Check rgb:%o", checkRGB);

  var neighbors = [];
  {
    const RGB = data[0].rgb;
    const LAB = color.sRGB2CIELAB(RGB);
    const delta = color.deltaE(targetLAB, LAB);
    for(let i = 0; i < nb; i++) {
      neighbors.push({idx: 0, deltaE: delta});
      //console.log("init: %o", neighbors[0])
    }
  }
  for(let i = 0; i < 256; i++) {
    const RGB = data[i].rgb;
    const LAB = color.sRGB2CIELAB(RGB);
    const delta = color.deltaE(targetLAB, LAB);

    let current = {idx: i, deltaE: delta};
    //console.log("current: %o (rgb: %o)", current, RGB);

    for(let j = nb-1; j >= 0; j--) {
      if (current.deltaE < neighbors[j].deltaE) {
        if (j+1 < nb) {
          neighbors[j+1] = neighbors[j];
        }
        neighbors[j] = current;
      } else {
        break;
      }
    }
  }

  return neighbors;
}

function updateColor() {
  const neighbors = findClosestColor(blob.color, blob.neighbors);

  // Update Page
  const node = document.getElementById("main-div");
  node.innerHTML = `<h1>Target Color</h1>`;
  const hex = blob.color;
  node.innerHTML += `<span style="background: ${hex};padding: 0% 1.8em; margin: 0 0.2em 0 0;"></span>`;
  //console.log("argunents: %o", arguments);
  if (arguments[0] === parseInt(arguments[0], 10)) {
    node.innerHTML += `${data[arguments[0]].name} (idx: ${arguments[0]})<br>`;
  } else {
    node.innerHTML += `NA (idx: NA)<br>`;
  }
  node.innerHTML += `HEX: ${hex}<br>`;
  const rgb = color.HEX2sRGB(hex);
  node.innerHTML += `sRGB: rgb(${rgb.r}, ${rgb.g}, ${rgb.b})<br>`;
  const lab = color.sRGB2CIELAB(rgb);
  node.innerHTML += `CIELAB: lab(${lab.l}, ${lab.a}, ${lab.b})<br>`;

  // Print closest
  node.innerHTML += `<h2>XTerm-256 closest ${neighbors.length} colors</h2>`;
  for(let i = 0; i < neighbors.length; i++) {
    const c = data[neighbors[i].idx];
    const hex = c.hexString;
    node.innerHTML += `<span style="background: ${hex};padding: 0% 1.8em; margin: 0 0.2em 0 0;"></span>`;
    node.innerHTML += `${c.name} (idx: ${neighbors[i].idx})<br>`;
    node.innerHTML += `HEX: ${hex}<br>`;
    const rgb = color.HEX2sRGB(hex);
    node.innerHTML += `sRGB: rgb(${rgb.r}, ${rgb.g}, ${rgb.b})<br>`;
    const lab = color.sRGB2CIELAB(rgb);
    node.innerHTML += `CIELAB: lab(${lab.l}, ${lab.a}, ${lab.b})<br>`;
    node.innerHTML += `(deltaE: ${neighbors[i].deltaE})<br><br>`;
  }
}

function updateGUI() {
  for (let i = 0; i < arguments.length; i++) {
    for (let j in arguments[i].__controllers) {
      arguments[i].__controllers[j].updateDisplay();
    }
  }
}

updateIndex();
