#set page(
    margin: (
        x : 2.5em,
        y : 2em,
    ),
    height: 20cm
)



#import "conf.typ": page_heading, experience, accent_1, accent_10, heading_font_size, main_font_size

#set text(font: ("Jost"), weight: "light", size: main_font_size + 3pt,)
#set list(marker: ([--], [-]))

#show heading: it => {
    if it.level == 1 {
        text(
            weight: "medium",
            size : heading_font_size + 2pt,
            fill : accent_1,
            it
            )
    }
    else if it.level == 2 {
        // Since smallcaps aren't implemented yet for fonts without scmp, use upper
        // smallcaps(it)
        text(
            weight: "regular",
            size: heading_font_size + 2pt,
            spacing: 100%,
            upper(it)
            )
    }
    else if it.level == 3 {
        text(
            weight: "medium",
            size: heading_font_size + 2pt,
            it
            )
    } else {
        it
    }
}

#show strong: set text(weight: "extralight", fill: accent_10)

#page_heading(
    name : (
        first : "Kunal's",
        last  : "Portfolio",
        email : "kchandan@uwaterloo.ca",
        phone : "814-807-7652",
        github : "kunalchandan",
        linkedin : "kunal-chandan",
        caption : "University of Waterloo",
        subcaption : "B.A.Sc Honours Electrical & Computer Engineering",
        website : "chandan.one"
    )
)

#let software = experience(
    description : (
        [KiCAD],
        [LTSpice/PySpice],
        [Cadence],
        [LayoutEditor],
        [Quartus Prime],
        [Linux],
    )
)

#let awards = experience(
    description : (
        [Baylis Medical Capstone Design Award],
        [NSERC Undergraduate Student Research Award],
    )
)

#let interests = experience(
    description : (
        [Cycling],
        [Rock Climbing],
        [Juggling],
    )
)

#let certifications = experience(
    description : (
        [2023 - Ignition Core Certified],
        [2022 - #link("https://qnfcf.uwaterloo.ca/", "QNFCF Cleanroom Certification")],
        [2022 - #link("https://uwaterloo.ca/giga-to-nanoelectronics-centre/lab-equipment", "G2N Cleanroom Certification")],
    )
)

#let Summary_Quals = experience(
    description : (
        [Multidisciplinary generalist electrical engineering skills specialist in software development at scale in data engineering with *Python* and performance critical development in *C++*],
        [Experienced electrical engineering skills with clean-room and hands-on electrical lab-work],
        [Strong electrical engineering foundation through coursework in semiconductor device physics, RF devices, control systems, and IC design]
    )
)

#let risc_v_core = experience(
    title : "Pipelined Risc-V Core",
    description : (
        [Designed 5-stage pipelined *RISC-V* 32-bit core in *Verilog* using only synthesizable constructs],
        [Core synthesized on FPGA and successfully ran programs. Testbenches used to ensure cycle accuracy],
    )
)

#let analog_filters = experience(
    title : "Realizable Analog Filters",
    website : "https://chandan.one/posts/filter/",
    description : (
        [Generated optimal schematics and realizable parts for  analog filter given cutoff frequency and roll-off],
        [Used *sympy* for circuit analysis and *pandas* as a parts database backend],

    )
)

#let go_sequencer = experience(
    title : "Multiple DNA sequence Aligner",
    website : "https://chandan.one/posts/GoLang-Refresher/",
    description : (
        [Perform multiple sequence alignement on DNA or amino acid sequences, *dynamic programming* and *graph theory* used to generate optimal sequence],
        [Used Go threads to improve performance, parallelization improved performance 8x],
    )
)


#let compiler = experience(
    title : "Compiler For Novel Language",
    website : "https://github.com/kunalchandan/RajLang/",
    description : (
        [Written in *C++* to support basic arithmetic functions, arrays, maps, and functions as first order members],
        [Used *CMake* to manage project and dependencies, *Catch* for unit and end-to-end testing],
        [Used *Boost* to manage graph datastructures and vizualization of Abstract Syntax Tree (AST)],
        [Targetting *LLVM IR* to allow for cross-platform compatability],
    )
)


#let mandelbrot_gen = experience(
    title : "GPU Mandelbrot Generator",
    website : "https://chandan.one/posts/CUDA/",
    description : (
        [Fractal generator written in *C++* using *CUDA*],
        [Parallleized code ran *56,160%* faster compared to single threaded CPU program],
    )
)

#let hearing_aid = experience(
    title : "Beamforming Hearing Aid",
    website : "https://chandan.one/posts/mic-array/",
    description : (
        [Designed 4 channel microphone array PCB in *KiCAD*, PCB does active analog bandpass filtering, differential amplification, and multichannel *ADC* over *SPI* to Raspberry Pi],
        [R-Pi does compression and sends audio over *Flask* server for further digital filtering and beamforming],
        [*Pytorch* to create quantized voice isolation model and minimize latency and maintain performance],
        [Used *multiprocessing*, *asyncio*, and *websockets* to maximize throughput and performance],
    )
)

#let ray_tracing = experience(
    title : "Ray Tracing Engine",
    website : "https://github.com/kunalchandan/ToyTracer/",
    description : (
        [Implemented 3D recursive path-tracing for arbitrary materials on basic geometric shapes],
        [Used *nalgebra* for arbitrary rotations & positions of camera & objects],
        [Parallel processing of ray-tracing using *rayon* yielding *\~10X* performance speed-up],
    )
)

#let education = experience(
    title : "University of Waterloo \nB.A.Sc Electrical & Computer Engineering 23'",
    description : (
        [Electronic devices, Semiconductor physics, Analog/Digital integrated circuits],
        [Analog/Digial/Multivariable control systems],
        [Radio frequency and microwave circuits]
    )
)

// #box(height: 1.8cm,
//     columns(3, gutter: 5pt)[
//         = Awards
//         #awards
//         = Certifications
//         #certifications
//         = Interests
//         #interests
//     ]
// )

#grid(
    columns : (2fr, 2fr, 1fr),
    rows: (auto),
    [
        = Awards
        #awards
    ],
    [
        = Certifications
        #certifications
    ],
    [
        = Interests
        #interests
    ]
)

#box(height: 12cm,
    columns(2, gutter: 10pt)[
    = Hardware Projects
    #hearing_aid
    #risc_v_core
    #analog_filters
    #colbreak()
    = Software Projects
    #ray_tracing
    #go_sequencer
    #compiler
    #mandelbrot_gen
    ]
)



// #let cell = rect.with(
// //   inset: 8pt,
// //   fill: rgb("888888"),
//   width: 100%,
// //   radius: 6pt
// )

// #let mini_column(body) = style(styles => {
//     let size = measure(body, styles)
//     [
//         #body
//         // #size.width
//         // #size.height
//     ]
// //   cell(height : 88%)[#body #size.width]
// })

// #grid(
//     columns: (18%, 82%),
//     // columns: (12%, 44%, 44%),
//     rows: (auto,),
//     gutter: 3pt,
//     mini_column[
//         = Software
//         #software
//         = Languages
//         #languages
//         = Lab Skills
//         #lab_tools
//         = Interests
//         #interests
//         = Award
//         #awards
//         ],
//     mini_column[
//         = Summary of Qualifications
//         #Summary_Quals
//         = Experience
//         #uw_wong
//         #groq_inc
//         #uw_yash
//         #huawei
//     //     ],
//     // mini_column[
//     //     = Experience
//         #mappedin
//         #robarts
//         #oicr
//         = Projects
//         #hearing_aid
//         #risc_v_core
//         #ray_tracing
//         // = Education
//         // #education
//         ],
// )
