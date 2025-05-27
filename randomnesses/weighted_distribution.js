autowatch = 1;

let values = [];
let weights = [];
let cumulative = [];

function values_list() {
    values = arrayfromargs(arguments);
    if (weights.length === values.length) {
        build_cumulative();
    }
}

function weights_list() {
    weights = arrayfromargs(arguments);
    if (weights.length === values.length) {
        build_cumulative();
    }
}

function build_cumulative() {
    cumulative = [];
    let total = 0;
    for (let i = 0; i < weights.length; i++) {
        total += weights[i];
        cumulative.push(total);
    }
}

function bang() {
    if (values.length === 0 || weights.length !== values.length) {
        post("Values and weights must be set and of equal length.\n");
        return;
    }

    let total = cumulative[cumulative.length - 1];
    let r = Math.random() * total;

    for (let i = 0; i < cumulative.length; i++) {
        if (r < cumulative[i]) {
            outlet(0, values[i]);
            return;
        }
    }

    // Fallback in case of rounding error
    outlet(0, values[values.length - 1]);
}

outlets = 1;
inlets = 1;

// message routing
function list() {
    if (inlet === 0) {
        values_list.apply(this, arguments);
    }
}

function anything() {
    if (messagename === "weights") {
        weights_list.apply(this, arrayfromargs(arguments));
    } else if (messagename === "values") {
        values_list.apply(this, arrayfromargs(arguments));
    }
}
