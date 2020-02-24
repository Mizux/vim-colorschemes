// Color Structure
var blob = {
  index: 42,
  color: "#500000",
  neighbors: 5
};

// First define Dat.Gui instances
var gui = new dat.GUI({ load: JSON });
// must be call before gui construction
//gui.remember(blob, 'Data');

var colorGUI = gui.addFolder("Color");
{
  colorGUI.add(blob, "index", 0, 255, 1).onChange(updateIndex);
  colorGUI.addColor(blob, "color").onChange(updateColor);
  colorGUI.add(blob, "neighbors", 1, 15, 1).onChange(updateColor);
  colorGUI.open();
}

function updateIndex() {
  blob.color = data[blob.index].hexString;
  updateGUI(colorGUI);

  updateColor(blob.index);
}

function findClosestColor(hex, nb) {
  const targetRGB = HEX2sRGB(hex);
  const targetLAB = sRGB2CIELAB(targetRGB);
  console.log("Target: rgb:%o lab:%o (hex: %s)", targetRGB, targetLAB, hex);
  //const checkRGB = CIELAB2sRGB(targetLAB);
  //console.log("Check rgb:%o", checkRGB);

  var neighbors = [];
  {
    const RGB = data[0].rgb;
    const LAB = sRGB2CIELAB(RGB);
    const delta = deltaE(targetLAB, LAB);
    for(i = 0; i < nb; i++) {
      neighbors.push({idx: 0, deltaE: delta});
      //console.log("init: %o", neighbors[0])
    }
  }
  for(i = 0; i < 256; i++) {
    const RGB = data[i].rgb;
    const LAB = sRGB2CIELAB(RGB);
    const delta = deltaE(targetLAB, LAB);

    let current = {idx: i, deltaE: delta};
    //console.log("current: %o (rgb: %o)", current, RGB);

    for(j = nb-1; j >= 0; j--) {
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

  let result = [];
  for (i = 0; i < nb; i++) {
    result.push(neighbors[i].idx);
    console.log("neighbor_%i: %o", i, neighbors[i])
  }
  return result;
}

function updateColor() {
  const colors = findClosestColor(blob.color, blob.neighbors);

  // Update Page
  const node = document.getElementById("main-div");
  console.log("argunents: %o", arguments);
  if (arguments[0] === parseInt(arguments[0], 10)) {
    node.innerHTML = `Name: ${data[arguments[0]].name}<br>`;
  } else {
    node.innerHTML = `Name: NA<br>`;
  }
  const hex = blob.color;
  node.innerHTML += `hex: <span style="background: ${hex}">${hex}</span> `;
  const rgb = HEX2sRGB(hex);
  node.innerHTML += `(r: ${rgb.r}, g: ${rgb.g}, b: ${rgb.b})<br>`;
  const lab = sRGB2CIELAB(data[blob.index].rgb);
  node.innerHTML += `(L: ${lab.l}, a: ${lab.a}, b: ${lab.b})<br><br>`;

  // Print closest
  node.innerHTML += `Closest ${blob.neighbors} colors:<br>`;
  for(i = 0; i < colors.length; i++) {
    node.innerHTML += `X11 idx: ${colors[i]}, `;
    const color = data[colors[i]];
    node.innerHTML += `Name: ${color.name}<br>`;
    const hex = color.hexString;
    node.innerHTML += `hex: <span style="background: ${hex}">${hex}</span> `;
    const rgb = HEX2sRGB(hex);
    node.innerHTML += `(r: ${rgb.r}, g: ${rgb.g}, b: ${rgb.b})<br>`;
    const lab = sRGB2CIELAB(data[blob.index].rgb);
    node.innerHTML += `(L: ${lab.l}, a: ${lab.a}, b: ${lab.b})<br><br>`;
  }
}

function updateGUI() {
  for (i = 0; i < arguments.length; i++) {
    for (var j in arguments[i].__controllers) {
      arguments[i].__controllers[j].updateDisplay();
    }
  }
}

updateIndex();
