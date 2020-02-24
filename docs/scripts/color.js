// ColorSpace
// sRGB: {r,g,b}
// XYZ: {x,y,z}
// CIELAB: {l,a,b}

// sRGB -> XYZ -> CIELAB
// CIELAB -> XYZ -> sRGB

// D65: Daylight sRGB
// see https://en.wikipedia.org/wiki/Illuminant_D65
var d65 = {
  x: 0.95047,
  y: 1.0000,
  z: 1.08883
};

// see: https://en.wikipedia.org/wiki/SRGB#The_reverse_transformation
function sRGB2XYZ(sRGB) {
  // Value in range [0,1]
  var r = sRGB.r / 255,
    g = sRGB.g / 255,
    b = sRGB.b / 255;

  // Reverse transformation
  r = (r > 0.04045) ? Math.pow((r + 0.055) / 1.055, 2.4) : r / 12.92;
  g = (g > 0.04045) ? Math.pow((g + 0.055) / 1.055, 2.4) : g / 12.92;
  b = (b > 0.04045) ? Math.pow((b + 0.055) / 1.055, 2.4) : b / 12.92;

  // Gamma expanded value
  return  {
    x: (r * 0.4124 + g * 0.3576 + b * 0.1805) / d65.x,
    y: (r * 0.2126 + g * 0.7152 + b * 0.0722) / d65.y,
    z: (r * 0.0193 + g * 0.1192 + b * 0.9505) / d65.z,
  };
}

// see: https://en.wikipedia.org/wiki/SRGB#The_forward_transformation_(CIE_XYZ_to_sRGB)
function XYZ2sRGB(XYZ) {
  // First compute the linear RGB
  var r = XYZ.x *  3.2406 + XYZ.y * -1.5372 + XYZ.z * -0.4986,
    g = XYZ.x * -0.9689 + XYZ.y *  1.8758 + XYZ.z *  0.0415,
    b = XYZ.x *  0.0557 + XYZ.y * -0.2040 + XYZ.z *  1.0570;

  // Then compute the gamma correction
  r = (r > 0.0031308) ? (1.055 * Math.pow(r, 1/2.4) - 0.055) : 12.92 * r;
  g = (g > 0.0031308) ? (1.055 * Math.pow(g, 1/2.4) - 0.055) : 12.92 * g;
  b = (b > 0.0031308) ? (1.055 * Math.pow(b, 1/2.4) - 0.055) : 12.92 * b;

  // Then clamp and scale to [0,255]
  return {r: Math.round(Math.max(0, Math.min(1, r)) * 255),
          g: Math.round(Math.max(0, Math.min(1, g)) * 255),
          b: Math.round(Math.max(0, Math.min(1, b)) * 255)};
}

// see: https://en.wikipedia.org/wiki/CIELAB_color_space#Forward_transformation
function CIELAB2XYZ(LAB) {
  var y = (LAB.l + 16) / 116,
      x = LAB.a / 500 + y,
      z = y - LAB.b / 200;

  return {
    x: d65.x * ((x > 6/29) ? Math.pow(x, 3) : 3 * Math.pow(6/29, 2) * (x - 4/29)),
    y: d65.y * ((y > 6/29) ? Math.pow(y, 3) : 3 * Math.pow(6/29, 2) * (y - 4/29)),
    z: d65.z * ((z > 6/29) ? Math.pow(z, 3) : 3 * Math.pow(6/29, 2) * (z - 4/29))
  };
}

// see: https://en.wikipedia.org/wiki/CIELAB_color_space#Reverse_transformation
function XYZ2CIELAB(XYZ) {
  var x = (XYZ.x > 0.008856) ? Math.pow(XYZ.x, 1/3) : (7.787 * XYZ.x) + 16/116,
    y = (XYZ.y > 0.008856) ? Math.pow(XYZ.y, 1/3) : (7.787 * XYZ.y) + 16/116,
    z = (XYZ.z > 0.008856) ? Math.pow(XYZ.z, 1/3) : (7.787 * XYZ.z) + 16/116;

  return {
    l: (116 * y) - 16,
    a: 500 * (x - y),
    b: 200 * (y - z)
  };
}

function sRGB2CIELAB(sRGB) {
  return XYZ2CIELAB(sRGB2XYZ(sRGB));
}

function CIELAB2sRGB(LAB) {
  return XYZ2sRGB(CIELAB2XYZ(LAB));
}

function HEX2sRGB(hex) {
  var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
  return result ? {
    r: parseInt(result[1], 16),
    g: parseInt(result[2], 16),
    b: parseInt(result[3], 16)
  } : null;
}

//alert(hexToRgb("#0033ff").g); // "51";

//deltaE 1994
function deltaE(labA, labB){
  var deltaL = labA.l - labB.l;
  var deltaA = labA.a - labB.a;
  var deltaB = labA.b - labB.b;
  var c1 = Math.sqrt(labA.a * labA.a + labA.b * labA.b);
  var c2 = Math.sqrt(labB.a * labB.a + labB.b * labB.b);
  var deltaC = c1 - c2;
  var deltaH = deltaA * deltaA + deltaB * deltaB - deltaC * deltaC;
  deltaH = deltaH < 0 ? 0 : Math.sqrt(deltaH);
  var sc = 1.0 + 0.045 * c1;
  var sh = 1.0 + 0.015 * c1;
  var deltaLKlsl = deltaL / (1.0);
  var deltaCkcsc = deltaC / (sc);
  var deltaHkhsh = deltaH / (sh);
  var i = deltaLKlsl * deltaLKlsl + deltaCkcsc * deltaCkcsc + deltaHkhsh * deltaHkhsh;
  return i < 0 ? 0 : Math.sqrt(i);
}

