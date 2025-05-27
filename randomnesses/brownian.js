autowatch = 1;

let value = 0.5;      // starting point
let step = 0.01;      // max step size per bang

function bang() {
    const delta = (Math.random() * 2 - 1) * step;
    value += delta;
    value = Math.max(0, Math.min(1, value)); // clamp to [0, 1]
    outlet(0, value);
}

function step_size(f) {
    step = Math.max(0, parseFloat(f));
}

function reset(f) {
    value = Math.max(0, Math.min(1, parseFloat(f)));
}

function msg_float(f) {
    step_size(f);
}

function anything() {
    if (messagename === "step") {
        step_size(arguments[0]);
    } else if (messagename === "reset") {
        reset(arguments[0]);
    }
}

inlets = 1;
outlets = 1;
