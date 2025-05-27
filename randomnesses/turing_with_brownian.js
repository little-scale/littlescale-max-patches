autowatch = 1;

let buffer = [];
let current = [];

let mutationProb = 0.1;    // chance of mutation per step
let mutateStep = 2;        // max delta during mutation
let valueRange = [0, 127]; // clamp output to range

function list() {
    buffer = arrayfromargs(arguments);
    current = buffer.slice(); // clone initial state
}

function bang() {
    if (current.length === 0) return;

    // possibly mutate last value in a Brownian way
    if (Math.random() < mutationProb) {
        const lastIndex = current.length - 1;
        const oldVal = current[lastIndex];
        const delta = (Math.random() * 2 - 1) * mutateStep;
        const newVal = clamp(oldVal + delta, valueRange[0], valueRange[1]);
        current[lastIndex] = Math.round(newVal); // optional: round to int
    }

    outlet(0, current[0]); // output first value

    // rotate
    const shifted = current.shift();
    current.push(shifted);
}

function mutation(f) {
    mutationProb = clamp(f, 0.0, 1.0);
}

function step(f) {
    mutateStep = Math.max(0.0, parseFloat(f));
}

function reset() {
    current = buffer.slice();
}

function clamp(val, min, max) {
    return Math.max(min, Math.min(max, val));
}

function anything() {
    if (messagename === "mutation") {
        mutation(arguments[0]);
    } else if (messagename === "mutate_step") {
        step(arguments[0]);
    } else if (messagename === "reset") {
        reset();
    }
}

inlets = 1;
outlets = 1;
