# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Session Prompt
In this session we will be working with the file named SESSIONPROMPT.md in this directory. Please read this file and summarise before moving on. 

**Previous Session**: Completed `slewenv~` (formerly `maths-envelope~`) - a Make Noise Maths-style function generator/integrator external for Max/MSP. The project demonstrates advanced MSP inlet handling, real-time parameter control, and integrator-based envelope generation with curve shaping. **CRITICAL DISCOVERY**: MSP signal/float inlet conflicts where Max provides zero-signals to all `dsp_setup()` inlets, overriding float parameter values. Successfully renamed from `maths-envelope~` to `slewenv~` with full build and documentation update.

**Current Session**: Completed `tide~` - a simplified Tides-based LFO external implementing Mutable Instruments Tides 2 core waveshaping algorithm. Key achievements: asymmetric ramp generator with variable slope control, 5 morphable shapes with smooth interpolation (linear/exponential/logarithmic/sine/arc-sine), dual-mode smoothness processing (2-pole Butterworth LPF + triangle wavefolder), three ramp modes (AD/Loop/AR), and comprehensive signal/float dual-inlet support. **NEW DISCOVERIES**: Advanced lookup table interpolation techniques, triangle wavefolder algorithms, and proper inlet configuration design patterns for LFO objects.

Do not remove this section of this CLAUDE.md.

---

## Quick Reference

### External Type Decision Matrix

| **Use Case** | **Type** | **Directory** | **Base** | **Headers** | **Reference** |
|--------------|----------|---------------|----------|-------------|---------------|
| Audio effects/generators | Audio | `source/audio/` | `t_pxobject ob` | `ext.h`, `z_dsp.h` | `pinknoise~/` |
| Data processing/AI | Basic | `source/basics/` | `t_object ob` | `ext.h`, `ext_obex.h` | `latenttable/` |
| Video/matrix processing | Matrix | `source/matrix/` | Dual structure | `jit.common.h` | `jit.simple/` |
| Custom GUI elements | UI | `source/ui/` | `t_jbox` | `jgraphics.h` | `uisimp/` |
| Multi-channel audio | MC | `source/mc/` | `t_pxobject ob` | `ext.h`, `z_dsp.h` | `mc.pack~/` |
| Threading/collections | Advanced | `source/advanced/` | `t_object ob` | `ext.h`, `ext_systhread.h` | `threadpool/` |
| General utilities | Misc | `source/misc/` | `t_object ob` | `ext.h` | `buddy/` |
| OpenGL/3D graphics | GL | `source/gl/` | Dual structure | `jit.gl.h` | `jit.gl.cube/` |

### Essential Commands

**Setup Check**
```bash
ls source/max-sdk-base/script/  # Verify SDK base exists
```

**Build Universal Binary (Recommended)**
```bash
cd source/audio/myexternal~
mkdir build && cd build
cmake -DCMAKE_OSX_ARCHITECTURES="x86_64;arm64" ..
cmake --build .
```

**Build All Externals (Bulk Development)**
```bash
# Build everything from root
mkdir build && cd build
cmake -DCMAKE_OSX_ARCHITECTURES="x86_64;arm64" ..
cmake --build . -j4

# Verify all built externals
ls ../externals/*.mxo
```

**Verify Build**
```bash
ls ../../../externals/myexternal.mxo
file ../../../externals/myexternal.mxo/Contents/MacOS/myexternal
# Should show: Mach-O universal binary with 2 architectures

# Codesign for M1/M2 Macs
codesign --force --deep -s - ../../../externals/myexternal.mxo
```

### CMakeLists.txt Template
```cmake
cmake_minimum_required(VERSION 3.19)
include(${CMAKE_CURRENT_SOURCE_DIR}/../../max-sdk-base/script/max-pretarget.cmake)
include_directories("${MAX_SDK_INCLUDES}" "${MAX_SDK_MSP_INCLUDES}")
file(GLOB PROJECT_SRC "*.h" "*.c" "*.cpp")
add_library(${PROJECT_NAME} MODULE ${PROJECT_SRC})
include(${CMAKE_CURRENT_SOURCE_DIR}/../../max-sdk-base/script/max-posttarget.cmake)
```

### Audio External Template
```c
typedef struct _myobject {
    t_pxobject ob;          // REQUIRED: Audio object base
    double parameter;       // Your parameters
} t_myobject;

// REQUIRED functions:
void *myobject_new(t_symbol *s, long argc, t_atom *argv);
void myobject_free(t_myobject *x);
void myobject_dsp64(t_myobject *x, t_object *dsp64, short *count, 
                    double samplerate, long maxvectorsize, long flags);
void myobject_perform64(t_myobject *x, t_object *dsp64, double **ins, 
                        long numins, double **outs, long numouts, 
                        long sampleframes, long flags, void *userparam);
```

---

## Critical Bug Fixes & Patterns

### MSP Signal/Float Inlet Conflicts (CRITICAL Discovery)

**Problem**: `dsp_setup((t_pxobject*)x, N)` creates N signal inlets where Max provides zero-signals to ALL inlets, overriding float parameter values.

**Symptoms**: Float messages appear received but external behavior never changes.

**Solutions**:
```c
// Quick Fix: Force float values for parameters
void perform64(...) {
    double trigger = ins[0][i];           // Inlet 1: signal OK  
    double frequency = x->frequency_float; // Inlet 2: force float
}

// Complete Fix: Check connection status
void myobject_dsp64(..., short* count, ...) {
    x->freq_has_signal = count[1];  // Store connection status
}
void perform64(...) {
    double frequency = x->freq_has_signal ? ins[1][i] : x->frequency_float;
}

// Float handler pattern
void myobject_float(t_myobject* x, double f) {
    long inlet = proxy_getinlet((t_object*)x);
    switch (inlet) {
        case 1: x->frequency_float = CLAMP(f, 20.0, 20000.0); break;
    }
}
```

### Parameter Safety Patterns

**Division by Zero Prevention**
```c
// DANGEROUS: Allows 0.0 which crashes in division
x->character = CLAMP(character, 0.0, 1.0);

// SAFE: Minimum above zero for divisor parameters  
x->character = CLAMP(character, 0.01, 1.0);
```

**"Brighter Wins" Logic (from vactrol~)**
```c
// Use fmin() for resistance - lower resistance = brighter
x->resistance = fmin(envelope_resistance, cv_resistance);
```

**Parameter Responsiveness Enhancement**
```c
// Mathematically enhance subtle effects
if (x->pole_count == 2) {
    effective_cutoff = cutoff * 0.8;  // 20% reduction for audible difference
}
```

---

## Project Status & References

### Completed Projects

| Project | Type | Status | Key Features | Why Study |
|---------|------|--------|--------------|-----------|
| **`pinknoise~`** | Audio | ✅ Complete | Basic DSP, single param | **Start here** - minimal complexity |
| **`latenttable`** | Basic | ✅ Complete | PyTorch port, C++ classes, file I/O | C++ integration patterns |
| **`vactrol~`** | Audio | ✅ Complete | Multi-inlet MSP, analog modeling, CV/envelope | **Intermediate MSP** - dual control sources |
| **`opuscodec~`** | Audio | ✅ Complete | Ring buffers, external libs, real-time codec | **Advanced** - frame-based processing |
| **`slewenv~`** | Audio | ✅ Complete | Integrator-based envelopes, curve shaping | **MSP inlet handling** discovery |
| **`harmosc~`** | Audio | ✅ Complete | Harmonic oscillator, wavetable synthesis, detuning | **Multi-argument parsing** patterns |
| **`tide~`** | Audio | ✅ Complete | Tides-inspired LFO, asymmetric ramps, shape morphing | **Advanced waveshaping** algorithms |

### Development Challenges Solved

| Challenge | Solution | Key Learning |
|-----------|----------|--------------|
| **MSP Signal/Float Conflicts** | Force float values or check `count` array | Max provides zero-signals to all `dsp_setup()` inlets |
| **Division by Zero** | Clamp parameters above zero for divisors | `character` parameter crashed when exactly 0.0 |
| **Frame Boundary Clicking** | Ring buffer system from `mp3codec~` | Continuous output eliminates audio gaps |
| **Attribute System Failures** | **ABANDON** - use message handlers instead | Attributes unreliable, messages proven |
| **Parameter Responsiveness** | Mathematical enhancement (20% cutoff reduction) | Subtle effects need amplification for audibility |
| **Multi-Inlet Assist Strings** | Match inlet order carefully in `assist()` | Easy to swap inlet descriptions |
| **Inlet Configuration Design** | Frequency on inlet 0 for LFO objects | More intuitive than trigger - matches user expectations |
| **Proxy Inlet Pitfalls** | **AVOID** unnecessary `proxy_new()` calls | Creates extra visible inlets beyond `dsp_setup()` count |

---

## Advanced Patterns

### Ring Buffer Pattern (Frame-based Processing)
```c
typedef struct _ring_buffer {
    float *buffer;
    int write_pos, read_pos, size, available;
} t_ring_buffer;
// Eliminates clicking artifacts in codec externals
```

### Neural Network Integration (PyTorch → Max)
1. Train in PyTorch → 2. Extract weights → 3. Pure C++ inference → 4. Max external
```cpp
typedef struct _yournet {
    t_object ob;                    // Basic object (NOT t_pxobject)  
    YourNetwork *network;           // C++ neural network class
} t_yournet;
```

### Threading Safety
```c
// NEVER in perform routine: malloc, outlets, post(), file I/O, mutex locks
// Safe: Pure computation, cached parameters, atomic reads
void myobject_perform64(...) {
    double param = x->parameter;  // Cache once per vector
    for (int i = 0; i < sampleframes; i++) {
        outs[0][i] = process_sample(ins[0][i], param);  // Pure computation
    }
}
```

### Multi-Inlet CV/Envelope Control
```c
// Dual control sources: envelope (bang-triggered) + CV signal
double envelope_resistance = calculate_envelope_resistance(x);
double cv_resistance = calculate_cv_resistance(cv_input);
x->resistance = fmin(envelope_resistance, cv_resistance);  // "Brighter wins"
```

### Advanced Waveshaping Patterns (from tide~)
```c
// Multi-table lookup with shape morphing
double shape_index = shape_param * (NUM_SHAPES - 1);
int shape_a = (int)shape_index;
int shape_b = shape_a + 1;
double shape_mix = shape_index - shape_a;

// Interpolate between lookup tables
double val_a = x->shape_lut[shape_a][index] * (1.0 - fract) + 
               x->shape_lut[shape_a][index + 1] * fract;
double val_b = x->shape_lut[shape_b][index] * (1.0 - fract) + 
               x->shape_lut[shape_b][index + 1] * fract;
double result = val_a * (1.0 - shape_mix) + val_b * shape_mix;
```

### Triangle Wavefolder Algorithm
```c
// Proper folding that maintains ±1 output range
double folded = input * gain;
while (folded > 1.0 || folded < -1.0) {
    if (folded > 1.0) {
        folded = 2.0 - folded;      // Fold down from ceiling
    } else if (folded < -1.0) {
        folded = -2.0 - folded;     // Fold up from floor
    }
}
```

---

## Troubleshooting

**Build Issues**
- Missing max-sdk-base → Manual download from GitHub
- External won't load → `codesign --force --deep -s - external.mxo`
- CMake errors → Use Unix Makefiles (default), not Xcode
- Architecture issues → Use universal binary build
- `error: 'MaxAudioAPI.h' file not found` → Check max-sdk-base submodule
- Wrong architecture → Ensure universal binary build

**Runtime Issues**  
- Parameters not working → MSP signal/float conflict - force float values
- Division by zero crashes → Clamp parameters above 0.01 for divisors
- Clicking in audio → Implement ring buffer system
- Attributes not working → Use message handlers instead
- Too many inlets showing → Remove unnecessary `proxy_new()` calls
- LFO inlet confusion → Put frequency on inlet 0, not trigger
- External loads but no audio → Check `dsp_setup()` inlet count
- Segfaults on load → Check object lifecycle (new/free functions)

---

## Environment Notes

**This Installation**: `/Users/a1106632/Documents/Max 8/Packages/max-sdk-main/`
- M2 MacBook Air - use universal binaries
- Not git repository - manual max-sdk-base download
- Build location: `externals/[external].mxo`

**Repository Navigation**

*Key Directories*:
- `source/[category]/[external]/` - Source code and CMakeLists.txt
- `externals/` - Built `.mxo` files (output directory)
- `help/` - `.maxhelp` documentation files
- `source/max-sdk-base/` - Core SDK (headers, scripts)
- `projects/` - Complex multi-file projects
- `tides_source/` - Reference implementation code

*File Patterns*:
- CMakeLists.txt in each external directory
- Help files match external names: `myext~.maxhelp`
- Build artifacts go to `externals/myext.mxo`

**Ready Examples**
- `source/audio/pinknoise~/` - basic audio
- `source/basics/latenttable/` - neural network  
- `source/audio/opuscodec~/` - advanced codec
- `source/ui/uisimp/` - user interface

---

## Advanced Integration Patterns

### Python Neural Networks (from `latenttable`, `euclid-space-mlp`)

**Workflow**: PyTorch → Weight Export → C++ Inference → Max External

```cpp
// Pattern from latenttable and rhythm externals
typedef struct _mynet {
    t_object ob;                    // Basic object base (NOT t_pxobject)
    MyNetwork *network;             // C++ inference class
    float *weights;                // Pre-loaded binary weights
} t_mynet;

// Implementation steps:
// 1. Train in PyTorch
// 2. Export weights with convert_pytorch_weights.py  
// 3. Load binary weights in C++
// 4. Implement pure C++ inference class
// 5. Wrap in Max external
```

### Multi-Language Projects

**C++ Classes with Max Wrapper**:
```c
// Constructor with C++ object
void *myobject_new(...) {
    x->cpp_engine = sysmem_newptr(sizeof(MyCppClass));
    new (x->cpp_engine) MyCppClass();
    ((MyCppClass*)x->cpp_engine)->Init();
}

// Destructor with C++ cleanup
void myobject_free(t_myobject *x) {
    if (x->cpp_engine) {
        ((MyCppClass*)x->cpp_engine)->~MyCppClass();
        sysmem_freeptr(x->cpp_engine);
    }
}
```

### Testing & Validation

**Build Verification**:
```bash
# Check universal binary
file externals/myext.mxo/Contents/MacOS/myext
# Should show: Mach-O universal binary with 2 architectures

# Test external loading
# Load in Max, check for errors in console
```

**Help File Validation**:
- Help files should be in `help/[external].maxhelp`
- Test all inlets and parameters
- Include audio examples for audio externals
- Verify assist strings match actual inlets

---

*Compacted Max SDK reference optimized for AI assistant lookup and technical decision-making.*