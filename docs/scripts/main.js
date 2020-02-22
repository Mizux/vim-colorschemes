// Color Structure
var blob = {index: 0};

document.getElementById("main-div").innerHTML = `comming soon ${42}`;

// First define Dat.Gui instances
var gui = new dat.GUI({ load: JSON });
// must be call before gui construction
//gui.remember(blob, 'Data');

var themeGUI = gui.addFolder("Theme");
{
  themeGUI
    .add(blob, "index", 0, 255, 1).onChange(redraw);
  themeGUI.open();
}

function redraw() {
  var node = document.getElementById("main-div");
  node.innerHTML = `value: ${blob.index}<br>`;
  //console.log(data[blob.index]);
  node.innerHTML += `name: ${data[blob.index].name}<br>`;
  node.innerHTML += `hex: ${data[blob.index].hexString}<br>`;
}

function updateGUI() {
  for (i = 0; i < arguments.length; i++) {
    for (var j in arguments[i].__controllers) {
      arguments[i].__controllers[j].updateDisplay();
    }
  }
}

