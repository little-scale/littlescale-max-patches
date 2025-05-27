autowatch = 1;

let buffer = [];
let current = [];
let mutationProb = 0.1;
let valueRange = [0, 127]; // optional clamping if needed

function list() {
    buffer = arrayfromargs(arguments);
    current = buffer.slice(); // make a copy
}

function bang() {
    if (current.length === 0) return;

    // possibly mutate last value
    if (Math.random() < mutationProb) {
        const newVal = randomInRange(valueRange[0], valueRange[1]);
        current[current.length - 1] = newVal;
    }

    // output current[0], then rotate
    outlet(0, current[0]);

    // rotate: shift left and push to end
    const shifted = current.shift();
    current.push(shifted);
}

function mutation(f) {
    mutationProb = Math.max(0.0, Math.min(1.0, parseFloat(f)));
}

function reset() {
    current = buffer.slice();
}

function randomInRange(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function anything() {
    if (messagename === "mutation") {
        mutation(arguments[0]);
    } else if (messagename === "reset") {
        reset();
    }
}

inlets = 1;
outlets = 1;
