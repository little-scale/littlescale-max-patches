autowatch = 1;

let lambda = 4.0; // average rate of events per interval

function bang() {
    const L = Math.exp(-lambda);
    let p = 1.0;
    let k = 0;

    while (p > L) {
        k++;
        p *= Math.random();
    }

    outlet(0, k - 1);
}

function set(val) {
    lambda = Math.max(0.0001, parseFloat(val)); // avoid zero
}

function msg_float(f) {
    set(f);
}

function anything() {
    if (messagename === "lambda") {
        set(arguments[0]);
    }
}

inlets = 1;
outlets = 1;
