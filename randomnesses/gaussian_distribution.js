autowatch = 1;

let stddev = 0.15; // standard deviation (spread)
let invert = false;
const resolution = 128;

// Generate a Gaussian-distributed random value and normalize to 0–1
function bang() {
    let u1 = Math.random();
    let u2 = Math.random();
    let z = Math.sqrt(-2.0 * Math.log(u1)) * Math.cos(2.0 * Math.PI * u2);

    // Convert z-score to [0,1] by assuming mean=0, stddev=stddev
    let x = z * stddev + 0.5;

    // Invert BEFORE clamping to preserve correct distribution shape
    if (invert) x = 1 - x;

    // Clamp final output to 0–1 range
    x = Math.max(0, Math.min(1, x));

    outlet(0, x);
}

// Set standard deviation
function deviation(f) {
    stddev = Math.max(0.001, parseFloat(f));
    outputCurve();
}

// Invert toggle
function invert_curve(val) {
    invert = !!val; // force to boolean
    outputCurve();  // update curve display when toggled
}

// Output the shape of the curve
function outputCurve() {
    let values = [];
    let maxVal = 0;

    for (let i = 0; i < resolution; i++) {
        let x = i / (resolution - 1);
        let y = gaussianPDF(x, 0.5, stddev);
        values.push(y);
        if (y > maxVal) maxVal = y;
    }

    // Normalize to peak at 1.0
    if (maxVal > 0) {
        values = values.map(v => v / maxVal);
    }

    // Optionally invert the shape
    if (invert) {
        values = values.map(v => 1 - v);
    }

    outlet(1, values);
}

// Gaussian PDF
function gaussianPDF(x, mean, stddev) {
    let coeff = 1 / (stddev * Math.sqrt(2 * Math.PI));
    let exp = Math.exp(-0.5 * Math.pow((x - mean) / stddev, 2));
    return coeff * exp;
}

// Message routing
function anything() {
    if (messagename === "deviation") {
        deviation(arguments[0]);
    } else if (messagename === "invert") {
        invert_curve(arguments[0]);
    }
}

inlets = 1;
outlets = 2;
