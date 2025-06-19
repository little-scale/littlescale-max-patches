# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Session Prompt
In this session we will be working with the file named SESSIONPROMPT.md in this directory. Please read this file and summarise before moving on. 

**Current Session**: Developing `maths-envelope` - an audio rate envelope generator external for Max/MSP that resembles the function output of the Maths module by Make Noise. This external generates envelopes with configurable rise/fall times and linearity control (exponential to logarithmic), supporting both triggered and looping modes. The project requires multi-inlet signal processing with real-time envelope generation.

Do not remove this section of this CLAUDE.md.

## Table of Contents

1. [Quick Architecture Decision Tree](#quick-architecture-decision-tree) - Rapid project setup guidance
2. [Quick Reference](#quick-reference) - Essential commands for immediate use
3. [Build System](#build-system) - Build commands and troubleshooting
4. [Max SDK Architecture](#max-sdk-architecture) - Object types and structure patterns
5. [Development Workflows](#development-workflows) - Project setup to testing
6. [Case Studies](#case-studies) - Completed projects and lessons learned
7. [Advanced Topics](#advanced-topics) - Neural networks and complex patterns
8. [Environment Notes](#environment-notes) - This specific installation

---

## Quick Architecture Decision Tree

### 🔄 Step 1: Determine External Type

**Audio Processing (Signal Rate)**
- **Use Case**: Audio effects, generators, analyzers, envelope generators
- **Directory**: `source/audio/`
- **Suffix**: `~` (e.g., `myeffect~`)
- **Base Struct**: `t_pxobject ob`
- **Headers**: `ext.h`, `ext_obex.h`, `z_dsp.h`
- **Example**: Envelope generators, filters, oscillators

**Data Processing (Message Rate)**
- **Use Case**: Number processing, utilities, algorithms
- **Directory**: `source/basics/`
- **Base Struct**: `t_object ob`
- **Headers**: `ext.h`, `ext_obex.h`
- **Example**: Calculators, data transformers, neural networks

**Matrix/Video Processing**
- **Use Case**: Image/video processing, 3D graphics
- **Directory**: `source/matrix/` or `source/gl/`
- **Prefix**: `jit.*`
- **Headers**: `jit.common.h`
- **Example**: Video effects, image processors

**User Interface Objects**
- **Use Case**: Custom GUI elements, controls
- **Directory**: `source/ui/`
- **Base Struct**: `t_jbox`
- **Headers**: `jgraphics.h`
- **Example**: Custom sliders, displays

### 🏗️ Step 2: Choose Reference Implementation

**Beginner Projects** (Copy & Modify)
- **Simple Audio**: `source/audio/pinknoise~/` - Basic audio generation with parameters
- **Simple Data**: `source/basics/simplemax/` - Minimal Max object template
- **Simple UI**: `source/ui/uisimp/` - Basic user interface object

**Intermediate Projects** (Study & Adapt)
- **Complex Audio**: `source/audio/lushverb~/` - Audio effect with multiple parameters
- **Neural Network**: `source/basics/latenttable/` - Data processing with C++ algorithms
- **Multi-channel**: `source/mc/mc.pack~/` - Multichannel audio processing

**Advanced Projects** (Deep Analysis Required)
- **Codec/Ring Buffer**: `source/audio/opuscodec~/` - Complex frame-based processing
- **Real-time Synthesis**: Custom implementation with performance optimization
- **Jitter Integration**: Matrix processing with OpenGL support

### ⚡ Step 3: Quick Setup Pattern

**For Audio Externals (Most Common)**
```bash
# Navigate to audio directory
cd source/audio/myproject~
mkdir build && cd build

# Build universal binary (recommended)
cmake -DCMAKE_OSX_ARCHITECTURES="x86_64;arm64" ..
cmake --build .

# Verify external was created
ls ../../../externals/myproject~.mxo
```

**Essential Functions for Audio Externals**
```c
typedef struct _myproject {
    t_pxobject ob;          // REQUIRED: Audio object base
    // Your parameters here
} t_myproject;

// REQUIRED audio external functions:
void *myproject_new(t_symbol *s, long argc, t_atom *argv);
void myproject_free(t_myproject *x);
void myproject_dsp64(t_myproject *x, t_object *dsp64, short *count, 
                     double samplerate, long maxvectorsize, long flags);
void myproject_perform64(t_myproject *x, t_object *dsp64, double **ins, 
                         long numins, double **outs, long numouts, 
                         long sampleframes, long flags, void *userparam);
```

### 🎯 Quick Decision for Common Use Cases

| **I want to create...** | **Type** | **Directory** | **Reference** | **Key Pattern** |
|-------------------------|----------|---------------|---------------|----------------|
| **Envelope Generator** | Audio | `source/audio/` | `pinknoise~/` | Multi-inlet signal processing |
| **Audio Effect** | Audio | `source/audio/` | `lushverb~/` | Input→Process→Output |
| **Data Processor** | Basic | `source/basics/` | `simplemax/` | Message handling |
| **Neural Network** | Basic | `source/basics/` | `latenttable/` | C++ algorithm integration |
| **Custom UI** | UI | `source/ui/` | `uisimp/` | Graphics and interaction |
| **Matrix Processor** | Matrix | `source/matrix/` | `jit.simple/` | Jitter object pattern |

---

## Quick Reference

### Essential Setup Check
```bash
# Verify max-sdk-base exists
ls source/max-sdk-base/script/

# If missing, download it:
cd source
curl -L "https://github.com/Cycling74/max-sdk-base/archive/main.zip" -o max-sdk-base.zip
unzip -q max-sdk-base.zip && mv max-sdk-base-main max-sdk-base && rm max-sdk-base.zip
```

### Build New External (Universal Binary)
```bash
# Navigate and create directory
cd source/audio/newexternal~  # or source/basics/newexternal
mkdir build && cd build

# Build universal binary (RECOMMENDED)
cmake -DCMAKE_OSX_ARCHITECTURES="x86_64;arm64" ..
cmake --build .
```

### Verify Build Success
```bash
# Check if external was created
ls ../../../externals/

# Verify architecture
file ../../../externals/yourexternal.mxo/Contents/MacOS/yourexternal
lipo -info ../../../externals/yourexternal.mxo/Contents/MacOS/yourexternal
```

### Common Troubleshooting
- **Build fails**: Check max-sdk-base exists, add `cmake_minimum_required(VERSION 3.19)` to CMakeLists.txt
- **External won't load**: Try `codesign --force --deep -s - external.mxo`
- **CMake errors**: Use Unix Makefiles generator (default), not Xcode

---

## Build System

### External Types Quick Decision Guide

**Audio Processing (`source/audio/`)**
- **Use Case**: Real-time audio processing, synthesis, effects, envelope generators
- **Naming**: Use `~` suffix (e.g., `maths-envelope~`)
- **Base**: `t_pxobject ob` (audio object)
- **Performance**: Signal-rate processing, real-time constraints
- **Examples**: Oscillators, filters, delays, envelope generators, codecs

**Data Processing (`source/basics/`)**
- **Use Case**: Message-rate processing, utilities, algorithms, neural networks
- **Naming**: No special suffix
- **Base**: `t_object ob` (basic object)
- **Performance**: Control-rate processing, no real-time constraints
- **Examples**: Calculators, data transformers, list processors, AI models

**Video/Matrix Processing (`source/matrix/`)**
- **Use Case**: Image/video effects, matrix operations, computer vision
- **Naming**: Use `jit.*` prefix (e.g., `jit.myeffect`)
- **Base**: Dual structure (Jitter + Max wrapper)
- **Performance**: Matrix-based processing, GPU acceleration available
- **Examples**: Video filters, 3D graphics, image analysis

**User Interface (`source/ui/`)**
- **Use Case**: Custom GUI controls, displays, interactive elements
- **Naming**: Descriptive names
- **Base**: `t_jbox` (UI object)
- **Performance**: GUI thread, graphics rendering
- **Examples**: Custom sliders, meters, visualizers

**Complex/Multi-component (`source/advanced/`)**
- **Use Case**: Multi-threaded, database, file I/O, system integration
- **Naming**: Varies by function
- **Base**: Various, depending on primary function
- **Performance**: System-level operations, threading considerations
- **Examples**: File browsers, database interfaces, network objects

### CMakeLists.txt Template
```cmake
cmake_minimum_required(VERSION 3.19)

include(${CMAKE_CURRENT_SOURCE_DIR}/../../max-sdk-base/script/max-pretarget.cmake)

include_directories( 
	"${MAX_SDK_INCLUDES}"
	"${MAX_SDK_MSP_INCLUDES}"
	"${MAX_SDK_JIT_INCLUDES}"
)

file(GLOB PROJECT_SRC "*.h" "*.c" "*.cpp")
add_library(${PROJECT_NAME} MODULE ${PROJECT_SRC})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../max-sdk-base/script/max-posttarget.cmake)
```

---

### Build Commands

#### Mac Development (Recommended)
```bash
# Individual external build (RECOMMENDED):
cd source/audio/your_external~
mkdir build && cd build

# Universal Binary (RECOMMENDED for distribution):
cmake -DCMAKE_OSX_ARCHITECTURES="x86_64;arm64" ..
cmake --build .

# Apple Silicon only (for development):
cmake -DCMAKE_OSX_ARCHITECTURES=arm64 ..
cmake --build .

# Standard build (default architecture):
cmake ..
cmake --build .
```

#### Windows Development
```bash
# Visual Studio 2019
cmake -G "Visual Studio 16 2019" ..

# Visual Studio 2017  
cmake -G "Visual Studio 15 2017 Win64" ..

# Build
cmake --build . --config Release
```

### Troubleshooting Build Issues

| Problem | Symptom | Solution |
|---------|---------|----------|
| **Missing max-sdk-base** | `include could not find requested file: ...max-sdk-base/script/max-pretarget.cmake` | Download manually: see Quick Reference above |
| **CMake generator error** | `Xcode 1.5 not supported` | Use Unix Makefiles (default): `cmake ..` |
| **CMake configuration** | `No cmake_minimum_required command` | Add `cmake_minimum_required(VERSION 3.19)` to CMakeLists.txt |
| **External won't load** | `cannot be loaded due to system security policy` | Code sign: `codesign --force --deep -s - external.mxo` |
| **Architecture issues** | External runs in Rosetta only | Use universal binary build command |
| **Individual vs SDK builds** | SDK-wide builds fail or take too long | **Build individual externals** - more reliable than entire SDK |
| **External library linking** | Undefined symbols from external libraries | Use `find_library()` and `target_link_libraries()` in CMakeLists.txt |
| **Build directory conflicts** | Old build files cause issues | `rm -rf build && mkdir build` - clean rebuild |
| **Apple Silicon code signing** | External loads but crashes on Apple Silicon | Universal binary + code signing: see build commands above |

### Testing External Builds
```bash
# Verify external exists
ls externals/yourexternal.mxo

# Check architecture support
file externals/yourexternal.mxo/Contents/MacOS/yourexternal
lipo -info externals/yourexternal.mxo/Contents/MacOS/yourexternal

# Test in Max (recommended)
# Use max-test package for automated testing: https://github.com/Cycling74/max-test
```

## Max SDK Architecture

### External Object Types

| Type | Headers | Base Struct | Use Case |
|------|---------|-------------|----------|
| **Basic Objects** | `ext.h`, `ext_obex.h` | `t_object ob` | Data processing, utilities |
| **MSP Audio Objects** | `ext.h`, `ext_obex.h`, `z_dsp.h` | `t_pxobject ob` | Signal processing (~) |
| **Jitter Objects** | `jit.common.h` | Dual structure | Matrix/video processing |
| **UI Objects** | `jgraphics.h` | `t_jbox` | User interface elements |
| **MC Objects** | (same as MSP) | `t_pxobject ob` | Multichannel audio |

### Required Functions by Type

#### Basic Objects
```c
void ext_main(void* r);                    // Class registration
void* obj_new(t_symbol* s, long argc, t_atom* argv);  // Constructor  
void obj_free(t_obj* x);                   // Destructor
void obj_assist(t_obj* x, void* b, long m, long a, char* s);  // Help text
```

#### MSP Audio Objects  
```c
// All basic object functions PLUS:
void obj_dsp64(t_obj* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void obj_perform64(t_obj* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
```

### Project Structure
```
source/
├── basics/     - Simple Max objects
├── audio/      - MSP signal processing (~) objects  
├── matrix/     - Jitter video/matrix objects (jit.*)
├── ui/         - User interface objects
├── mc/         - Multichannel audio objects
├── gl/         - OpenGL/Jitter graphics objects
└── advanced/   - Complex multi-component objects
```

### Development Best Practices
- **Memory**: Use Max's functions (`sysmem_newptr`, `sysmem_freeptr`)
- **Real-time Safety**: No outlets/qelems/malloc in audio perform routines
- **Thread Safety**: Audio perform routines have minimal protection
- **Cross-platform**: Code must work on Mac and Windows
- **Universal Binaries**: Use universal binary builds for distribution

---

## Development Workflows

### Standard Workflow
1. **Choose external type** and appropriate source directory
2. **Copy existing project** (if adapting) or start with template
3. **Define struct** with correct base type (`t_object` vs `t_pxobject`)
4. **Implement required methods** (`ext_main`, constructors, message handlers)
5. **Add object-specific functionality**
6. **Create CMakeLists.txt** in source category directory
7. **Build using CMake** (universal binary recommended)
8. **Test in Max** (externals appear in `externals/` directory)
9. **Create help file** in `help/` directory

### For Existing Algorithm Projects
```bash
# Copy your project into SDK
cp -r ~/my_algorithm_project source/audio/myalgorithm~

# Adapt to Max external patterns
# - Replace main() with ext_main()
# - Wrap algorithm in Max object structure
# - Add message handlers for parameters
# - Output via Max outlets instead of stdout
```

### Help File Creation
- Place `.maxhelp` files in `help/` directory
- Use same name as external: `myexternal.maxhelp`
- Include usage examples and parameter documentation
- Test help system integration in Max

---

## Case Studies

### Completed Projects by Complexity Level

#### 🟢 Beginner Level: Start Here

##### ✅ Pink Noise Generator (`pinknoise~`)
- **Location**: `source/audio/pinknoise~/`
- **Type**: MSP audio external - **Perfect starting point for audio externals**
- **Algorithm**: Voss-McCartney with 5-bit precision
- **Features**: Single parameter (gain 0.0-1.0), real-time generation
- **Key Lessons**: Basic audio external structure, parameter handling, DSP loop
- **Complexity**: ⭐ Simple
- **Status**: Complete, universal binary tested
- **Why Start Here**: Minimal complexity, proven patterns, well-documented

#### 🟡 Intermediate Level: Build Skills

##### ✅ LatentTable Neural Network (`latenttable`)
- **Location**: `source/basics/latenttable/`
- **Type**: Data-rate neural network external
- **Features**: PyTorch model port, 3D position input, configurable smoothing
- **Key Lessons**: C++ integration, file I/O, runtime model switching, complex algorithms
- **Complexity**: ⭐⭐ Moderate - involves C++ classes and file handling
- **Achievements**: Zero dependencies, runtime model switching, universal binary
- **Status**: Production ready
- **Why Study**: Demonstrates C++ integration patterns and complex data processing

#### 🔴 Advanced Level: Complex Systems

##### ✅ OpusCodec Real-time Codec (`opuscodec~`)
- **Location**: `source/audio/opuscodec~/`
- **Type**: MSP audio codec external - **Most complex audio external example**
- **Algorithm**: Real-time Opus encode/decode with ring buffer system
- **Features**: Stereo processing, configurable quality, click-free output, comprehensive parameter control
- **Architecture**: libopus 1.5.2, 4-frame ring buffer, auto-adapts to host sample rate (8/12/16/24/48kHz), 20ms default frames
- **Key Lessons**: Ring buffer implementation, frame-based processing, external library integration
- **Breakthrough**: Ring buffer system from mp3codec~ solved frame boundary clicking completely
- **Complexity**: ⭐⭐⭐ Complex - involves external libraries, ring buffers, frame-based processing
- **Status**: Production ready - comprehensive documentation, message system, universal binary
- **Why Study**: Demonstrates advanced audio processing patterns and external library integration

### Current Development: Ogg Vorbis Codec

#### 🚧 OggVorbisCodec (`oggvorbiscodec~`)
- **Location**: `source/audio/oggvorbiscodec~/` (planned)
- **Type**: MSP audio codec external using proven codec patterns
- **Reference Implementations**: `mp3codec~`, `opuscodec~` - both use successful ring buffer architecture
- **Core Algorithm**: Ready in `vorbis_codec_core.h/c` - libvorbis/libogg integration
- **Key Features**: VBR/ABR/CBR modes, quality control (-0.1 to 1.0), metadata support
- **Architecture Requirements**: Ring buffer system for smooth playback, variable block size handling
- **Status**: Core implementation ready, Max wrapper needed

#### Common Development Challenges

| Challenge | Solution | Key Learning |
|-----------|----------|--------------|
| **Missing max-sdk-base** | Download manually from GitHub | Always verify dependencies first |
| **Build system issues** | Build individual externals vs entire SDK | Individual builds are more reliable |
| **CMake configuration** | Add `cmake_minimum_required(VERSION 3.19)` | Required for individual builds |
| **Apple Silicon compatibility** | Use universal binary builds | Test on target architecture |
| **External structure** | Follow type patterns exactly | MSP requires `t_pxobject`, basics use `t_object` |
| **Frame boundary clicking** | Ring buffer system from mp3codec~ | Continuous output eliminates gaps |
| **Vorbis variable blocks** | Ring buffer + adaptive frame handling | Variable block sizes (256-8192) need buffering |
| **Codec parameter control** | Message system over attributes | Proven reliable for real-time parameter changes |
| **Codec attribute system** | Add `attr_args_process()` call | Enables @attribute syntax in Max |
| **"signal" reserved word** | Renamed to "mode" message/attribute | Max/MSP reserves "signal" for DSP |
| **Attribute autocomplete** | Use `CLASS_ATTR_BASIC()` + `attr_args_offset()` | Proper attribute registration for @ syntax |
| **Attribute functionality** | **ABANDONED** - use message system instead | Max attributes unreliable, message handlers proven |

#### Recommended Development Approach
1. **Start Small**: Build individual externals rather than entire SDK
2. **Verify Dependencies**: Check max-sdk-base exists before building  
3. **Use Individual Builds**: More reliable than SDK-wide builds
4. **Test Incrementally**: Build → Load → Basic Function → Full Testing
5. **Use Universal Binaries**: Best compatibility across Mac architectures

---

## Advanced Topics

### Performance Optimization Patterns

Based on successful projects documented in case studies, these patterns have proven effective for high-performance Max externals:

#### Real-time Audio Processing Optimization

**Ring Buffer Pattern (from `opuscodec~` success)**
```c
// Critical for frame-based processing - eliminates clicking artifacts
typedef struct _ring_buffer {
    float *buffer;
    int write_pos;
    int read_pos;
    int size;
    int available;
} t_ring_buffer;

// Continuous output delivery prevents audio gaps
int ring_buffer_read(t_ring_buffer *rb, float *output, int frames) {
    // Smooth, continuous audio output
    // Prevents clicking from frame boundary issues
}
```

**Signal-rate Parameter Updates**
```c
// From pinknoise~: efficient parameter handling in perform routine
void myobject_perform64(t_myobject *x, t_object *dsp64, double **ins, 
                        long numins, double **outs, long numouts, 
                        long sampleframes, long flags, void *userparam) {
    double *out = outs[0];
    double gain = x->gain;  // Cache parameter once per vector
    
    for (int i = 0; i < sampleframes; i++) {
        *out++ = my_algorithm() * gain;  // Apply cached parameter
    }
}
```

#### Memory Management Best Practices

**Use Max SDK Memory Functions**
```c
// Always use Max's memory functions for thread safety
void *buffer = sysmem_newptr(size * sizeof(float));
sysmem_freeptr(buffer);

// Never use malloc/free in Max externals
// Max SDK functions handle threading and cleanup automatically
```

**Efficient Struct Design**
```c
typedef struct _myobject {
    t_pxobject ob;              // Base object MUST be first
    
    // Group related data for cache efficiency
    double *processing_buffer;   // Audio processing data
    long buffer_size;
    
    // Parameters accessed in perform routine
    double frequency;
    double amplitude;
    
    // Less frequently accessed data at end
    t_symbol *mode;
    long initialization_flags;
} t_myobject;
```

#### CPU Optimization Techniques

**Loop Optimization (from audio externals)**
```c
// Efficient vector processing
void process_audio_vector(double *input, double *output, long frames, double gain) {
    // Loop unrolling for better CPU utilization
    long i;
    for (i = 0; i < frames - 3; i += 4) {
        output[i]   = input[i]   * gain;
        output[i+1] = input[i+1] * gain;
        output[i+2] = input[i+2] * gain;
        output[i+3] = input[i+3] * gain;
    }
    // Handle remaining samples
    for (; i < frames; i++) {
        output[i] = input[i] * gain;
    }
}
```

**Complexity Management (from `opuscodec~`)**
```c
// Offer complexity/quality tradeoffs
typedef enum {
    QUALITY_FAST = 0,      // Minimal CPU, acceptable quality
    QUALITY_BALANCED = 5,   // Good CPU/quality balance (DEFAULT)
    QUALITY_BEST = 10      // Maximum quality, high CPU
} quality_mode_t;

// Let users choose performance vs quality
void set_processing_complexity(t_myobject *x, long complexity) {
    x->complexity = CLAMP(complexity, 0, 10);
    // Adjust algorithm parameters based on complexity setting
}
```

#### Threading and Real-time Safety

**Audio Thread Safety Rules**
```c
// NEVER in perform routine:
// - malloc/free or sysmem_newptr/sysmem_freeptr
// - outlet_anything() or any outlet functions
// - post() or object_error()
// - file I/O operations
// - mutex locks that might block

// Safe patterns for perform routine:
void myobject_perform64(...) {
    // Read parameters (atomic reads)
    double param = x->parameter;
    
    // Process audio samples
    for (int i = 0; i < sampleframes; i++) {
        // Pure computation only
        outs[0][i] = process_sample(ins[0][i], param);
    }
    
    // No system calls or allocations
}
```

**Parameter Update Safety**
```c
// Message handlers update parameters safely
void myobject_frequency(t_myobject *x, double freq) {
    // Validate in message thread
    if (freq < 20.0 || freq > 20000.0) {
        object_error((t_object *)x, "Frequency out of range");
        return;
    }
    
    // Atomic write - safe for audio thread to read
    x->frequency = freq;
    
    // Confirmation output (safe in message thread)
    post("Frequency set to %.2f Hz", freq);
}
```

#### External Library Integration

**Dynamic Library Loading (from codec externals)**
```cmake
# CMakeLists.txt - Link external libraries properly
find_library(EXTERNAL_LIB mylib REQUIRED)
target_link_libraries(${PROJECT_NAME} ${EXTERNAL_LIB})

# Handle library dependencies for distribution
set_target_properties(${PROJECT_NAME} PROPERTIES
    INSTALL_RPATH "@loader_path"
    BUILD_WITH_INSTALL_RPATH TRUE
)
```

**Error Handling with External Libraries**
```c
// Graceful degradation when external libraries fail
int initialize_external_system(t_myobject *x) {
    x->external_system = external_lib_create();
    if (!x->external_system) {
        object_error((t_object *)x, "Failed to initialize external library");
        x->bypass_mode = 1;  // Fall back to bypass
        return 0;
    }
    return 1;
}
```

#### Performance Monitoring

**Built-in Performance Feedback**
```c
// Optional performance monitoring for development
#ifdef DEBUG_PERFORMANCE
typedef struct _perf_monitor {
    clock_t start_time;
    long sample_count;
    double cpu_usage;
} t_perf_monitor;

void monitor_performance(t_myobject *x, long samples_processed) {
    // Track CPU usage and report periodically
    // Remove for release builds
}
#endif
```

### Neural Network Integration Pattern (PyTorch → Max External)

#### Proven Workflow
1. **Train in PyTorch** (familiar, fast iteration)
2. **Extract weights in training script** (integrate, don't separate)  
3. **Implement pure C++ inference** (no dependencies)
4. **Build as Max external** (universal binary)
5. **Test against PyTorch** (verify identical results)

#### Key Implementation Patterns
```cpp
// Neural network externals use basic objects (data-rate, not audio-rate)
typedef struct _yournet {
    t_object ob;                    // Basic object (NOT t_pxobject)
    YourNetwork *network;           // C++ neural network class
    double input_buffer[N];         // Input processing
} t_yournet;

// Essential message handlers:
void yournet_process(t_yournet *x, t_symbol *s, long argc, t_atom *argv);
void yournet_loadweights(t_yournet *x, t_symbol *s);
```

#### Advanced Features Successfully Implemented
- **Runtime Model Switching**: `loadweights <filename>` message
- **Argument-based Initialization**: `latenttable my_model.dat`
- **Configurable Parameters**: Multi-stage smoothing systems
- **Path Handling**: Max's "Macintosh HD:" format conversion
- **Zero Dependencies**: Pure C++ with no external libraries

### Mac Path Handling
```cpp
// Critical: Handle Max's path format on Mac
if (weights_path_str.find("Macintosh HD:") == 0) {
    weights_path_str = weights_path_str.substr(12); // Remove prefix
    std::replace(weights_path_str.begin(), weights_path_str.end(), ':', '/');
}
```

### Universal Binary Best Practices
- Always build universal binaries for distribution
- Max automatically selects correct architecture slice
- No performance penalty for universal vs single-architecture
- Essential for compatibility across Mac hardware

### Attribute System Implementation

#### Proven Pattern for Working Attributes
Based on analysis of working Max SDK examples (`lores~.c`, `attrtester.c`, `mp3codec~.c`):

```c
// Function prototype for custom setter:
t_max_err obj_attr_setparam(t_obj *x, void *attr, long argc, t_atom *argv);

// In ext_main() - Essential pattern:
CLASS_ATTR_LONG(c, "param", 0, t_object, param);
CLASS_ATTR_BASIC(c, "param", 0);              // Key for autocomplete!
CLASS_ATTR_FILTER_MIN(c, "param", min_val);
CLASS_ATTR_FILTER_MAX(c, "param", max_val);
CLASS_ATTR_LABEL(c, "param", 0, "User Label");
CLASS_ATTR_ACCESSORS(c, "param", 0, obj_attr_setparam);  // CRITICAL!
CLASS_ATTR_SAVE(c, "param", 0);               // Enable save/load

// In constructor - Critical order:
long offset = attr_args_offset(argc, argv);   // Separate args from attrs
// Process positional arguments using offset
attr_args_process(x, argc, argv);             // Attributes override args

// Custom setter function - makes attributes actually work:
t_max_err obj_attr_setparam(t_obj *x, void *attr, long argc, t_atom *argv) {
    if (argc && argv) {
        long value = atom_getlong(argv);
        x->param = value;                      // Update struct member
        // Apply to underlying system (codec, DSP, etc.)
        your_system_set_param(x->system, value);
        post("obj: Parameter set to %ld", value);
    }
    return MAX_ERR_NONE;
}
```

#### Key Requirements for Working Attributes
1. **`CLASS_ATTR_BASIC()`** - Mark primary attributes as "basic" for visibility
2. **`attr_args_offset()`** - Properly separate positional args from attributes  
3. **`CLASS_ATTR_ACCESSORS()`** - **CRITICAL**: Custom setter functions for functionality
4. **Correct registration order** - Define attributes before `class_dspinit()`
5. **`CLASS_ATTR_SAVE()`** - Required for attribute persistence and recognition

#### Common Attribute Patterns
- **Range limits**: `CLASS_ATTR_FILTER_MIN/MAX()` for numeric validation
- **UI styling**: `CLASS_ATTR_STYLE_LABEL()` for onoff, rgba, etc.
- **Categories**: `CLASS_ATTR_CATEGORY()` for inspector grouping
- **Aliases**: `CLASS_ATTR_ALIAS()` for alternative names

#### Critical Insight: Two-Part Attribute System
Max attributes require **both** registration and functionality:

1. **Registration** (`CLASS_ATTR_*` macros) - Tells Max the attribute exists
2. **Functionality** (`CLASS_ATTR_ACCESSORS` + custom setters) - Makes them actually work

**Common Mistake**: Registering attributes without custom setters results in:
- ✅ Attributes visible in inspector/attrui
- ✅ Values stored in struct members 
- ❌ **No actual effect** - underlying system never updated

**Solution**: **ABANDON ATTRIBUTES** - Use message system instead:
- Message handlers are reliable and well-documented
- Direct control flow and debugging
- No mysterious registration issues
- Proven pattern across many Max externals

---

## Environment Notes

### This Max SDK Installation
- **Location**: `/Users/a1106632/Documents/Max 8/Packages/max-sdk-main/`
- **Not a git repository**: Use manual max-sdk-base download approach
- **Architecture**: M2 MacBook Air - use universal binaries for compatibility
- **CMake Generator**: Use default (Unix Makefiles) - Xcode generator has issues
- **Build Location**: Externals appear in `max-sdk-main/externals/` directory

### Environment Verification
```bash
# Check you're in the right place
pwd
# Should show something like: .../max-sdk-main/...

# Verify max-sdk-base exists
ls source/max-sdk-base/script/

# Check available external categories
ls source/
```

### File Locations
- **Source Code**: `source/[category]/[external]/`
- **Built Externals**: `externals/[external].mxo`
- **Help Files**: `help/[external].maxhelp`
- **SDK Headers**: `source/max-sdk-base/c74support/`

### Ready-to-Reference Examples
- **Audio External**: `source/audio/pinknoise~/` (complete implementation)
- **Neural Network**: `source/basics/latenttable/` (PyTorch port example)
- **Audio Codec**: `source/audio/opuscodec~/` (real-time codec with ring buffer)
- **Codec Reference**: `source/audio/mp3codec~/` (original ring buffer pattern)
- **Basic Object**: `source/basics/simplemax/` (minimal template)
- **UI Object**: `source/ui/uisimp/` (user interface example)

### Development Environment Status
✅ **Fully Configured** - This directory is ready for additional Max external development
✅ **Build System Working** - CMake configuration tested and documented
✅ **Universal Binary Support** - Mac universal binaries confirmed working
✅ **Reference Projects Available** - Multiple working examples for different external types

---

*This CLAUDE.md file consolidates extensive Max SDK development experience and provides practical guidance for building Max externals efficiently.*