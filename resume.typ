#set text(font: ("Jost"), weight: "light")
#set page(
    // fill: rgb("222222"),
    margin: (
        x : 2.5em,
        y : 2em,
    )

    )
// #set text(fill: rgb("fdfdfd"))



#import "conf.typ": page_heading, experience, accent_1, accent_10


#show heading: it => {
    if it.level == 1 {
        text(
            weight: "medium",
            fill : accent_1,
            it
            )
    }
    else if it.level == 2 {
        // Since smallcaps aren't implemented yet for fonts without scmp, use upper
        // smallcaps(it)
        text(
            weight: "extralight",
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
        phone : "647-785-1313",
        github : "kunalchandan",
        linkedin : "kunal-chandan",
        caption : "University of Waterloo",
        subcaption : "B.A.Sc Honours Electrical & Computer Engineering",
        website : "chandan.one"
    )
)

#let languages = [
= Languages
- Python
    - Numpy
    - Pandas
    - Scipy
    - Sympy
    - TensorFlow
    - Pytorch
- C++
- SQL
- Rust
    - nalgebra
    - Rayon
- MATLAB
- Go
- Verilog
- RISC-V
- Shell
- LaTeX
]


#let software = [
= Software
- KiCAD
- LTSpice/PySpice
- Cadence
- LayoutEditor
- Quartus Prime
- Linux
]


#let lab_tools = [
= Lab Skills
- PCB Design
- Oscilliscope
- Network Analyzer
- Probe Station
- Wirebonder
- Diebonder
- Plasma Cleaner & Asher
- Dicing saw
- HMDS Oven
- Spincoater
- SEM
- X-Ray Spectroscopy
]


#let Summary_Quals = experience(
    description : (
        [Multidisciplinary generalist electrical engineering skills specialist in software development at scale in data engineering with *Python* and performance critical development in *C++*],
        [Experienced electrical engineering skills with clean-room and hands-on electrical lab-work],
        [Strong electrical engineering foundation through coursework in semiconductor device physics, RF devices, computer architecture, control systems, and IC design]
    )
)

#let UW_experience_1 = experience(
    title : "Research Electrical Engineer",
    website : "https://chandan.one/posts/Report/",
    company : "University of Waterloo",
    dates : (
        start : "Sept 2022",
        end : "Apr 2023",
    ),
    location : "Waterloo, ON",
    description : (
        [Developed research plan for packaging of $mu$LEDs onto TFT packplanes using indium electroplating],
        // ([skldj f], [ssf]),
        [Characterized results using *SEM* and *X-Ray Spectroscopy*,],
        [Simulation],
        ),
)

#let risc_v_core = experience(
    title : "Pipelined Risc-V Core",
    description : (
        [Designed 5-stage pipelined *RISC-V* 32-bit core in *Verilog* using only synthesizable constructs],
        [Core synthesized on FPGA and successfully ran programs. Testbenches used to ensure cycle accuracy],

    )
)

#let hearing_aid = experience(
    title : "Beamforming Hearing Aid PCB",
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
        // [Used traits],
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

#let cell = rect.with(
  inset: 8pt,
//   fill: rgb("888888"),
  width: 100%,
  radius: 6pt
)

#let mini_column(body) = style(styles => {
    let size = measure(body, styles)
    [
        #body
        #size.width
        #size.height
    ]
//   cell(height : 88%)[#body #size.width]
})

#grid(
    columns: (18%, 82%),
    rows: (auto,),
    gutter: 3pt,
    mini_column[
        #software
        #languages
        #lab_tools
        ],
    mini_column[
        = Summary of Qualifications
        #Summary_Quals
        = Experience
        #UW_experience_1
        = Projects
        #hearing_aid
        #risc_v_core
        #ray_tracing
        = Education
        #education
        ],
)
