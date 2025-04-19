autowatch = 1;

inlets = 5;  // f0, Q, fs, filter type (float), gain
outlets = 5; // a0, a1, a2, b1, b2

const pi = Math.PI;

// Parameters
let f0 = 500;
let Q = 0.707;
let fs = 48000;
let typeFloat = 0.0;
let gainDB = 0;

function msg_float(v) {
    switch (inlet) {
        case 0: f0 = v; break;
        case 1: Q = v; break;
        case 2: fs = v; break;
        case 3: typeFloat = v; break;
        case 4: gainDB = v; break;
    }
    calculate();
}

function calculate() {
    const omega = 2 * pi * f0 / fs;
    const cos_omega = Math.cos(omega);
    const sin_omega = Math.sin(omega);
    const alpha = sin_omega / (2 * Q);
    const A = Math.pow(10, gainDB / 40);

    const wrappedType = (typeFloat + 8) % 8; // 🔥 Wrap into 0–7.9999
    const typeFloor = Math.floor(wrappedType);
    const typeCeil = (typeFloor + 1) % 8;     // 🔥 Wrap 7→0
    const frac = wrappedType - typeFloor;

    const floorCoeffs = getCoefficientsForType(typeFloor, omega, sin_omega, cos_omega, alpha, A);
    const ceilCoeffs = getCoefficientsForType(typeCeil, omega, sin_omega, cos_omega, alpha, A);

    const b0 = lerp(floorCoeffs.b0, ceilCoeffs.b0, frac);
    const b1 = lerp(floorCoeffs.b1, ceilCoeffs.b1, frac);
    const b2 = lerp(floorCoeffs.b2, ceilCoeffs.b2, frac);
    const a0 = lerp(floorCoeffs.a0, ceilCoeffs.a0, frac);
    const a1 = lerp(floorCoeffs.a1, ceilCoeffs.a1, frac);
    const a2 = lerp(floorCoeffs.a2, ceilCoeffs.a2, frac);

    outlet(0, b0 / a0);
    outlet(1, b1 / a0);
    outlet(2, b2 / a0);
    outlet(3, a1 / a0);
    outlet(4, a2 / a0);
}

function lerp(a, b, t) {
    return a + (b - a) * t;
}

function getCoefficientsForType(index, omega, sin_omega, cos_omega, alpha, A) {
    let b0, b1, b2, a0, a1, a2;
    switch (index) {
        case 0: // lowpass
            b0 = (1 - cos_omega) / 2;
            b1 = 1 - cos_omega;
            b2 = (1 - cos_omega) / 2;
            a0 = 1 + alpha;
            a1 = -2 * cos_omega;
            a2 = 1 - alpha;
            break;
        case 1: // highpass
            b0 = (1 + cos_omega) / 2;
            b1 = -(1 + cos_omega);
            b2 = (1 + cos_omega) / 2;
            a0 = 1 + alpha;
            a1 = -2 * cos_omega;
            a2 = 1 - alpha;
            break;
        case 2: // bandpass
            b0 = sin_omega / 2;
            b1 = 0;
            b2 = -sin_omega / 2;
            a0 = 1 + alpha;
            a1 = -2 * cos_omega;
            a2 = 1 - alpha;
            break;
        case 3: // notch
            b0 = 1;
            b1 = -2 * cos_omega;
            b2 = 1;
            a0 = 1 + alpha;
            a1 = -2 * cos_omega;
            a2 = 1 - alpha;
            break;
        case 4: // allpass
            b0 = 1 - alpha;
            b1 = -2 * cos_omega;
            b2 = 1 + alpha;
            a0 = 1 + alpha;
            a1 = -2 * cos_omega;
            a2 = 1 - alpha;
            break;
        case 5: // peaking EQ
            b0 = 1 + alpha * A;
            b1 = -2 * cos_omega;
            b2 = 1 - alpha * A;
            a0 = 1 + alpha / A;
            a1 = -2 * cos_omega;
            a2 = 1 - alpha / A;
            break;
        case 6: // low shelf
            const sqrtA = Math.sqrt(A);
            b0 = A * ((A + 1) - (A - 1) * cos_omega + 2 * sqrtA * alpha);
            b1 = 2 * A * ((A - 1) - (A + 1) * cos_omega);
            b2 = A * ((A + 1) - (A - 1) * cos_omega - 2 * sqrtA * alpha);
            a0 = (A + 1) + (A - 1) * cos_omega + 2 * sqrtA * alpha;
            a1 = -2 * ((A - 1) + (A + 1) * cos_omega);
            a2 = (A + 1) + (A - 1) * cos_omega - 2 * sqrtA * alpha;
            break;
        case 7: // high shelf
            const sqrtA2 = Math.sqrt(A);
            b0 = A * ((A + 1) + (A - 1) * cos_omega + 2 * sqrtA2 * alpha);
            b1 = -2 * A * ((A - 1) + (A + 1) * cos_omega);
            b2 = A * ((A + 1) + (A - 1) * cos_omega - 2 * sqrtA2 * alpha);
            a0 = (A + 1) - (A - 1) * cos_omega + 2 * sqrtA2 * alpha;
            a1 = 2 * ((A - 1) - (A + 1) * cos_omega);
            a2 = (A + 1) - (A - 1) * cos_omega - 2 * sqrtA2 * alpha;
            break;
        default:
            post("Unknown filter index: " + index + "\n");
            b0 = 1; b1 = 0; b2 = 0; a0 = 1; a1 = 0; a2 = 0;
    }
    return {b0, b1, b2, a0, a1, a2};
}
