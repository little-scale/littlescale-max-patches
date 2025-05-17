autowatch = 1;

var width = 512;
var height = 1;
var matrix_name = "interference";

var lambda = 0.0005;     // Wavelength in mm
var slit_sep = 0.1;      // Slit separation in mm
var slit_width = 0.02;   // Slit width in mm
var gamma = 0.3;         // Gamma contrast

// Clamp + map utilities
function clamp(x, min, max) {
    return Math.max(min, Math.min(max, x));
}

function map(v, inMin, inMax, outMin, outMax) {
    return outMin + (clamp(v, inMin, inMax) - inMin) * (outMax - outMin) / (inMax - inMin);
}

// Setters
function set_lambda(v) {
	v = clamp(v, 380, 740); 
	v = v / 1000000; 
    lambda = v; // 380–740 nm
}

function set_slitsep(v) {
	v = clamp(v, 0.05, 1); 
    slit_sep = map(v, 0, 1, 0.05, 1); // mm
}

function set_slitwidth(v) {
    slit_width = clamp(v, 0.01, 0.075); // mm
}

function set_gamma(v) {
    gamma = clamp(v, 0.05, 3.0); // perceptual contrast
}

function set_resolution(w, h) {
    width = w;
    height = h;
}

// Monochrome colormap (returns grayscale)
function colormap(v) {
    v = clamp(v, 0, 1);
    var c = Math.pow(v, gamma);
    return [c, c, c];
}

// Main pattern generator
function bang() {
    var m = new JitterMatrix(4, "char", width, height);
    var intensity_row = [];
    var max_intensity = 0;

    // Compute 1D profile
    for (var x = 0; x < width; x++) {
        var norm_x = (x / width - 0.5);
        var theta = Math.atan(norm_x);
        var beta = Math.PI * slit_width * Math.sin(theta) / lambda;
        var delta = Math.PI * slit_sep * Math.sin(theta) / lambda;

        var single = beta === 0 ? 1 : Math.pow(Math.sin(beta) / beta, 2);
        var double = Math.pow(Math.cos(delta), 2);
        var intensity = single * double;

        intensity_row[x] = intensity;
        if (intensity > max_intensity) max_intensity = intensity;
    }

    // Draw grayscale matrix
    for (var x = 0; x < width; x++) {
        var norm_intensity = intensity_row[x] / max_intensity;
        var col = colormap(norm_intensity);
        var gray = Math.floor(col[0] * 255); // all channels equal
        var a = 255;

        for (var y = 0; y < height; y++) {
         m.setcell(x, y, "val", 255, gray, gray, gray); // A, R, G, B
        }
    }

    m.name = matrix_name;
    outlet(0, "jit_matrix", m.name);

    // Debug info
    // post("λ =", lambda, "mm | d =", slit_sep, "mm | a =", slit_width, "mm | γ =", gamma, "\n");
}
