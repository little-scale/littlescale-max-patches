autowatch = 1;

// permutation table (can be randomized)
let perm = new Array(512);
let grad = [1, -1];

function init() {
    let p = [];
    for (let i = 0; i < 256; i++) p[i] = i;
    for (let i = 255; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [p[i], p[j]] = [p[j], p[i]];
    }
    for (let i = 0; i < 512; i++) {
        perm[i] = p[i & 255];
    }
}

function fade(t) {
    return t * t * t * (t * (t * 6 - 15) + 10);
}

function lerp(t, a, b) {
    return a + t * (b - a);
}

function grad1(hash, x) {
    return grad[hash & 1] * x;
}

function noise1D(x) {
    const X = Math.floor(x) & 255;
    x = x - Math.floor(x);
    const u = fade(x);

    const a = perm[X];
    const b = perm[X + 1];

    return lerp(u, grad1(a, x), grad1(b, x - 1));
}

function noise(x) {
    const n = noise1D(x);
    outlet(0, n); // output in [-1, 1]
}

function bang() {
    noise(Math.random() * 100);
}

function msg_float(f) {
    noise(f);
}

init();
inlets = 1;
outlets = 1;
