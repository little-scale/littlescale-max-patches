autowatch = 1;

let original = [];
let pool = [];

function anything() {
    const selector = messagename;
    const args = arrayfromargs(arguments);

    if (selector === "list") {
        original = args;
        reset();
    } else if (selector === "reset") {
        reset();
    }
}

function bang() {
    if (pool.length === 0) {
        reset(); // refill automatically when exhausted
    }

    if (pool.length > 0) {
        const i = Math.floor(Math.random() * pool.length);
        const val = pool.splice(i, 1)[0]; // remove one at random
        outlet(0, val);
    }
}

function reset() {
    pool = original.slice(); // copy original
}

inlets = 1;
outlets = 1;
