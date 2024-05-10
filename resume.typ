#set page(
    // fill: rgb("222222"),
    margin: (
        x : 2.5em,
        y : 2em,
    )
)
// #set text(fill: rgb("fdfdfd"))



#import "conf.typ": page_heading, experience, accent_1, accent_10, heading_font_size, main_font_size

#set text(font: ("Jost"), weight: "light", size: main_font_size,)
#set list(marker: ([--], [-]))

#show heading: it => {
    if it.level == 1 {
        text(
            weight: "medium",
            size : heading_font_size,
            fill : accent_1,
            it
            )
    }
    else if it.level == 2 {
        // Since smallcaps aren't implemented yet for fonts without scmp, use upper
        // smallcaps(it)
        text(
            weight: "regular",
            size: heading_font_size,
            spacing: 100%,
            upper(it)
            )
    }
    else if it.level == 3 {
        text(weight: "medium", it)
    } else {
        it
    }
}

#show strong: set text(weight: "extralight", fill: accent_10)

#page_heading(
    name : (
        first : "Kunal",
        last  : "Chandan",
        email : "kchandan@uwaterloo.ca",
        phone : "814-807-7652",
        github : "kunalchandan",
        linkedin : "kunal-chandan",
        caption : "B.A.Sc Honours Electrical Engineering '23",
        // caption : "University of Waterloo",
        subcaption : "",
        // subcaption : "B.A.Sc Honours Electrical & Computer Engineering",
        website : "chandan.one"
    )
)

#let languages = {
    [Python (*PyTorch*, Numpy, Pandas, Flask), C++ (*CUDA*, Boost), MATLAB, Rust, Go, SQL, RISC-V, Verilog]
}
#let libraries = {
    [Boost, CUDA, PyTorch, Numpy, Pandas, Flask]
}

// #let languages = exp_list(
//     title : "Languages",
//     items : (
//         [Python],
//         (
//             // [Numpy],
//             // [Pandas],
//             [Scipy],
//             // [Flask],
//             [Sympy],
//             // [TensorFlow],
//             [Pytorch],
//         ),
//         [C++],
//         (
//             [Boost],
//             [Catch],
//         ),
//         [SQL],
//         // [Rust],
//         // (
//         //     [nalgebra],
//         //     [Rayon],
//         // ),
//         [MATLAB],
//         [Go],
//         [Verilog],
//         [RISC-V],
//         // [Shell],
//         // [LaTeX],
//     )
// )


#let software = {
    [Docker, Postman, REST, KiCAD, LTSpice, Cadence Virtuoso, LayoutEditor, Quartus Prime]
}
// #let software = experience(
//     description : (
//         [KiCAD],
//         [LTSpice/PySpice],
//         [Cadence Virtuoso],
//         [LayoutEditor],
//         [Quartus Prime],
//         [Linux],
//     )
// )

#let awards = experience(
    description : (
        [Baylis Medical Capstone Design Award],
        [2022 - #link("https://qnfcf.uwaterloo.ca/", "QNFCF Cleanroom Certification")],
        [2022 - #link("https://uwaterloo.ca/giga-to-nanoelectronics-centre/lab-equipment", "G2N Cleanroom Certification")],
    )
)

#let interests = experience(
    description : (
        [Cycling],
        [Rock Climbing],
        [Juggling],
    )
)


// #let lab_tools = experience(
//     description: (
//         [PCB Design],
//         [Oscilliscope],
//         [Network Analyzer],
//         [Probe Station],
//         [Wirebonder],
//         [Diebonder],
//         [Plasma Cleaner & Asher],
//         [Dicing saw],
//         [HMDS Oven],
//         [Spincoater],
//         [SEM],
//         [X-Ray Spectroscopy],
//     )
// )


#let Summary_Quals = experience(
    description : (
        [Multidisciplinary generalist electrical engineering skills specialist in software development at scale in data engineering with *Python* and performance critical development in *C++*],
        [Experienced electrical engineering skills with clean-room and hands-on electrical lab-work],
        [Strong electrical engineering foundation through coursework in semiconductor device physics, RF devices, control systems, and IC design]
    )
)

#let nvidiac = experience(
    title : "Post-Silicon Validation Engineer",
    website : "https://nvidia.com/",
    company : "NVIDIA - Contractor (6 months)",
    dates : (
        start : "March 2024",
        end : "Present",
    ),
    location : "Santa Clara, CA, USA",
    description : (
        [Debug *PCIe 5.0* failures on current and upcoming SoCs and GPUs],
        [Developed testing software in *Python* for validation during bringup of upcoming SoCs],
        [Identified high speed IO failure modes during bringup of upcoming and existing products],
    )

)

#let enphase = experience(
    title : "Test Automation Engineer - Electrical Compliance",
    website : "https://enphase.com/",
    company : "Enphase Energy",
    dates : (
        start : "Aug 2023",
        end : "Mar 2024",
    ),
    location : "Fremont, CA, USA",
    description : (
        // [Creating tests for compliance of microinverters and other products to *UL-1741* and *IEEE-1547*],
        // [Automation of tests in *Python* targetting lab safety and interoperability with lab instruments like powermeters, environment chambers, oscilliscopes etc.],
        // [Designed and implemented automated compliance testing for PV inverters to IEEE and UL standards],
        // [Created business analytics and equipment management application, improving test equipment utilization by *20%* (*Ignition Perspective*,* Python*)],
        // [Developed *MySQL*, *Flask* asset management database and interlock system ensuring regulatory compliance and saving \$50K yearly],
        // [Improved ease of testing for technicians by adding interoperability with *Ignition*],
        [Devloped software systems in *Python* to test high and low voltage electrical systems under a variety of strenuous conditions],
        [Implemented *Jenkins* to enhance testing platform reliability by reducing software errors],
        [Engineered a logging and traceability system using *Go*, *Gin*, and *MySQL* to reduce errors during regulatory submission],
    )
)

#let uw_wong = experience(
    title : "Electrical Engineering Research Assistant - Display Semiconductors",
    website : "https://chandan.one/posts/Report/",
    company : "University of Waterloo",
    dates : (
        start : "Sept 2022",
        end : "Apr 2023",
    ),
    location : "Waterloo, ON, CA",
    description : (
        [Designed custom PCBs in *KiCAD* for driving small $mu$LED active/passive matrix displays using *STM32* MCU],
        [Developed research plan for packaging $mu$LEDs onto TFT backplane using indium electroplating],
        // [Characterized results using *SEM* and *X-Ray Spectroscopy*],
        [Designed characterization setups for $mu$LEDs in *Fusion360* and *Arduino* interfaced with *Python*],
        [Validated flip-chip diebonding results with thermal and electrical simulations in *MATLAB*],
        [Designed and validated new $mu$LED layouts to improve mechanical and electrical performance],
        ),
)

#let uw_yash = experience(
    title : "Data Science Research Assistant - Autonomous Vehicles",
    website : "https://github.com/kunalchandan/CL2-AutoDetective",
    company : "University of Waterloo",
    dates : (
        start : "Jan 2023",
        end : "Apr 2023",
    ),
    location : "Waterloo, ON, CA",
    description : (
        [Causal inference and counterfactual reasoning applied to identify root cause failures],
        [Created literature review of fault analysis in autonomous vehicles (AVs)],
        [Created a dashboard using *Flask/Dash* to allow for data exploration and identification of novel failure modes],
    )
)

#let groq_inc = experience(
    title : "Software Engineer - HPC Firmware",
    website  : "https://groq.com/",
    company : "Groq Inc.",
    dates : (
        start : "Jan 2022",
        end : "Apr 2022",
    ),
    location : "Mountain View, CA, USA",
    description : (
        [Designed algorithms for resource allocation involving SRAM and ALUs on Groq’s Tensor Processing Unit (TPU)],
        [Developed *Python* and *C++* firmware APIs to improve throughput and minimize end to end latency of instructions and data],
        [Leveraged timing analysis to prevent data stream conflicts while maximizing ALU utilization],
        [Leveraged *PyBind11* for interoperability between C++ and Python firmware during codebase migration],
    )
)

#let huawei = experience(
    title : "Software Engineer - Digital Compression",
    company : "Huawei Technologies",
    dates : (
        start : "May 2020",
        end : "Aug 2020",
    ),
    location : "Waterloo, ON, CA",
    description : (
        // [Designed collision free non-cryptographic hash function (NCHF) in Galois Field 2 (GF-2)],
        [Designed non-cryptographic hash functions (NCHF) with *linear algebra*, *SAT* and self-designed $G F(2)$ matrix solver to verify properties like collision resistance, distribution uniformity, and computational efficiency],
        [Benchmarked the optimized SIMD hashing function against existing NCHFs using *Rust* and *C++*],
        [Implemented novel border detection algorithms in *Go* using *probabilistic data structures* to maximize performance],
    )
)

#let mappedin = experience(
    title : "Software Engineer - Machine Learning",
    website : "https://www.mappedin.com/",
    company : "MappedIn",
    dates : (
        start : "Sept 2019",
        end : "Dec 2019",
    ),
    location : "Waterloo, ON, CA",
    description : (
        [Engineered *Clustering* + *SVM* + *Random Forest* ensemble models to replace existing LSTMs, reducing inference costs *2x* while maintaining prediction accuracy],
        [Increased prediction accuracy from *40%* to *80%* on existing *LSTM* models with feature engineering, hyperparameter optimization, and automated data cleaning (*Python*, *SQL*)],
        [Designed pipelines for data cleaning and analysis and integrated new *SQL* data warehouse],
    )
)

#let robarts = experience(
    title : "Software Engineer - Bioinformatics",
    company : "Robarts Research Institute",
    dates : (
        start : "Jan 2021",
        end : "Apr 2021",
    ),
    location : "London, ON",
    description : (
        [Developed software for migration of genetic analysis database from GRCh37 to GRCh38],
        [Developed software in *Python* & *SQL* for existing genetics analysis pipeline],
        [Resolved bugs in existing lab software (*Perl*, *Python*, *C\#*)],
    )
)

#let oicr = experience(
    title : "Software Engineer - Bioinformatics",
    website : "https://github.com/oicr-gsi/dashi",
    company : "Ontario Institute for Cancer Research",
    dates : (
        start : "Jan 2019 - Apr 2019",
        end : "Jan 2021 - Apr 2021",
    ),
    location : "Toronto, ON, CA",
    description : (
        // [Project lead of new statistical analysis tool for all future studies at OICR-GSI],
        [Developed software in *Python* and *SQL* for existing genetics analysis pipeline],
        [Resolved bugs in existing lab software (*Perl*, *Python*, *C\#*)],
        [Designed genomics pipelines for visualization, cleaning, and analysis; interfacing with existing *R*, *Perl*, and *Shell* pipelines],
        [Wrote future-proof and extensible code to process big datasets (*Pandas*, *Shell*)],
        // [Open-sourced project and version controlled with *Git*; created extensive documentation],
    )
)

#let synthesizer = experience(
    title : "Hybrid Music Synthesizer",
    website : "https://github.com/kunalchandan/OpenWave/",
    description : (
        [Designed and fabricated a hybrid synthesizer for realtime music synthesis; digital synthesis on Teensy 4.1 Cortex-M7 MCU and analog synthsis using *ADC/DAC* and analog filters],
        [Designed PCB in *KiCAD*, wrote UI and audio processing code using *Rust*],
        [*RTIC* (*RTOS* library) used to manage concurrency on MCU, *Slint* library used to manage UI on display; priority based scheduling used to prevent timing conflicts between UI updates, audio synthesis, and input handling],
        [Developed custom digital signal processing (DSP) modules for oscillators, filters, and envelope generators in Rust, optimizing for *low latency* and *high throughput*],
        [Achieved sub-millisecond latency and low power consumption while maintaining high (24-bit) quality audio],
        [Applied real-time audio synthesis techniques, including wavetable synthesis, FM synthesis, and subtractive synthesis, to generate a wide range of sounds and effects],
    )
)

#let risc_v_core = experience(
    title : "Pipelined Risc-V Core",
    description : (
        [Designed 5-stage pipelined *RISC-V* 32-bit core in *Verilog* using only synthesizable constructs],
        [Added pipeline registers and feedback/data-forwarding paths to optimize performance for branching, memory and write-back operations],
        [Core synthesized on *FPGA* and successfully ran branching and recursive algorithms. Testbenches used to ensure cycle accuracy],
    )
)

#let compiler = experience(
    title : "C++ Compiler for C++ like Language",
    website : "https://github.com/kunalchandan/RajLang/",
    description : (
        [Designed a lexical tokenizer and compiler in *C++* to generate *RISC-V* assembly for custom programming language],
        [Used _Spike_ RISC-V simulator to verify correctness of assembly],
        [Used *CMake* (build management tool), *Catch* (unit-testing framework), *Boost* (graph library/dotviz generator)],
    )
)

#let msa_dna = experience(
    title : "Multiple Sequence Aligner",
    website : "https://github.com/kunalchandan/goSeq/",
    description : (
        [Wrote sequence aligner for novo assembly of short sequences using Progressive Alignment Construction using the Needleman-Wunsch algorithm],
        [Written in *Go* to take advantage of light weight green threads, used greedy heuristics to reduce $O(n!)$ problem to $O(n^2)$],
    )
)

#let hearing_aid = experience(
    title : "Beamforming Hearing Aid System",
    website : "https://chandan.one/posts/mic-array/",
    description : (
        [Designed 4-channel microphone array PCB with active analog bandpass filtering, diff. amp., and multichannel *ADC* over *SPI* to R-Pi (*KiCAD*)],
        [Created *Flask* server on R-Pi to compress and transfer audio data to *Pytorch* neural network for further digital filtering and beamforming],
        [Adapted and trained Pytorch quantized voice isolation model to minimize latency while maintaining desired audio quality],
        [Used *multiprocessing*, *asyncio*, and *websockets* to maximize system throughput, providing continuous audio output],
    )
)

#let ray_tracing = experience(
    title : "3D Ray Tracing Engine",
    website : "https://github.com/kunalchandan/ToyTracer/",
    description : (
        [Implemented 3D recursive path-tracing for arbitrary materials on basic geometric shapes],
        [Used *nalgebra* for arbitrary rotations and positions of camera and objects],
        [Parallel processing of ray-tracing using *rayon* yielding *\~10X* performance speed-up on CPU],
    )
)

#let education = experience(
    title : "University of Waterloo -- B.A.Sc Electrical Engineering 2018 - 2023",
    description : (
        // [Key Courses: Electronic devices, semiconductor physics, analog/digital integrated circuits, multivariable control systems],
        [Key Courses: *Computer Architecture*, Multivariable Control Systems, Analog/Digital Integrated Circuits],
        [Select Awards and Certifications: Baylis Medical Capstone Design Award, #link("https://qnfcf.uwaterloo.ca/", "QNFCF") and #link("https://uwaterloo.ca/giga-to-nanoelectronics-centre/lab-equipment", "G2N") Cleanroom Certifications],
    )
)
#box(height: 1.0cm,
    columns(1, gutter: 5pt)[
        #text(weight: "medium", size : heading_font_size, fill : accent_1, [Languages:])
        #languages

        // #text(weight: "medium", size : heading_font_size, fill : accent_1, [Libraries:])
        // #libraries

        #text(weight: "medium", size : heading_font_size, fill : accent_1, [Tools:])
        #software
        // #text(weight: "medium", size : heading_font_size, fill : accent_1, [Lab Tools:])
        // #lab_tools
        // #colbreak()
        // = Interests
        // #interests
        // = Award
        // #awards
    ]
)

    // = Summary of Qualifications
    // #Summary_Quals
#box(height: 23.4cm,
    columns(1, gutter: 10pt)[
    = Experience
    #nvidiac
    #groq_inc
    // #uw_yash
    #huawei
    #mappedin
    #uw_wong
    #enphase
    // #oicr
    = Education
    #education
    ]
)


#pagebreak()

#page_heading(
    name : (
        first : "Kunal's",
        last  : "Portfolio",
        email : "kchandan@uwaterloo.ca",
        phone : "814-807-7652",
        github : "kunalchandan",
        linkedin : "kunal-chandan",
        caption : "B.A.Sc Honours Electrical Engineering '23",
        // caption : "University of Waterloo",
        subcaption : "",
        // subcaption : "B.A.Sc Honours Electrical & Computer Engineering",
        website : "chandan.one"
    )
)

#box(height: 23.6cm,
    columns(1, gutter: 10pt)[
    = Projects
    #compiler
    #ray_tracing
    #hearing_aid
    #risc_v_core
    #msa_dna
    #synthesizer
    ]
)

