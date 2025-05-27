autowatch = 1;

let bias = 0.0;
const clampBias = 1.0;
const shape = 5.0;
const resolution = 128;

function bang() {
    const u = Math.random();
    const x = applyBias(u);
    outlet(0, x);
}

function applyBias(u) {
    let x;
    if (bias < 0) {
        const t = Math.abs(bias);
        const exp = Math.pow(u, shape);
        x = (1 - t) * u + t * exp;
    } else {
        const t = bias;
        const log = 1 - Math.pow(1 - u, shape);
        x = (1 - t) * u + t * log;
    }
    return x;
}

function outputCurve() {
    const out = [];
    for (let i = 0; i < resolution; i++) {
        const u = i / (resolution - 1);
        out.push(applyBias(u));
    }
    outlet(1, out);
}

function set(val) {
    bias = Math.max(-clampBias, Math.min(clampBias, parseFloat(val)));
    outputCurve(); // refresh curve on set
}

function msg_float(f) {
    set(f);
}

function refresh() {
    outputCurve();
}

function anything() {
    if (messagename === "bias") {
        set(arguments[0]);
    } else if (messagename === "refresh") {
        outputCurve();
    }
}

inlets = 1;
outlets = 2;
