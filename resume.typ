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
        phone : "647-785-1313",
        github : "kunalchandan",
        linkedin : "kunal-chandan",
        caption : "University of Waterloo",
        subcaption : "B.A.Sc Honours Electrical & Computer Engineering",
        website : "chandan.one"
    )
)

#let languages = experience(
    description : (
        [Python],
        (
            [Numpy],
            [Pandas],
            [Scipy],
            [Flask],
            [Sympy],
            [TensorFlow],
            [Pytorch],
        ),
        [C++],
        [SQL],
        [Rust],
        (
            [nalgebra],
            [Rayon],
        ),
        [MATLAB],
        [Go],
        [Verilog],
        [RISC-V],
        [Shell],
        [LaTeX],
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
        // [2022 - #link("https://qnfcf.uwaterloo.ca/", "QNFCF Cleanroom Certification")],
        // [2022 - #link("https://qnfcf.uwaterloo.ca/", "G2N Cleanroom Certification")],
    )
)

#let interests = experience(
    description : (
        [Cycling],
        [Rock Climbing],
        [Juggling],
    )
)


#let lab_tools = experience(
    description: (
        [PCB Design],
        [Oscilliscope],
        [Network Analyzer],
        [Probe Station],
        [Wirebonder],
        [Diebonder],
        [Plasma Cleaner & Asher],
        [Dicing saw],
        [HMDS Oven],
        [Spincoater],
        [SEM],
        [X-Ray Spectroscopy],
        )
)


#let Summary_Quals = experience(
    description : (
        [Multidisciplinary generalist electrical engineering skills specialist in software development at scale in data engineering with *Python* and performance critical development in *C++*],
        [Experienced electrical engineering skills with clean-room and hands-on electrical lab-work],
        [Strong electrical engineering foundation through coursework in semiconductor device physics, RF devices, computer architecture, control systems, and IC design]
    )
)

#let uw_wong = experience(
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
        [Characterized results using *SEM* and *X-Ray Spectroscopy*,],
        [Designed custom PCBs in *KiCAD* for driving small $mu$LED active/passive matrix displays using *STM32* microcontroller and accompanying analog circuitry],
        [Designed characterization setups for $mu$LEDs in *Fusion360* and *Arduino* interfaced with *Python*],
        [Validated flip-chip diebonding results with thermal and electrical simulations in *MATLAB*],
        [Designed and validated new layouts to improve mechanical and electrical performance],
        ),
)

#let uw_yash = experience(
    title : "Software Engineer - Autonomous Vehichles",
    website : "https://github.com/kunalchandan/CL2-AutoDetective",
    company : "University of Waterloo",
    dates : (
        start : "Jan 2023",
        end : "Apr 2023",
    ),
    location : "Waterloo, ON",
    description : (
        [Aimed to do fault analysis of autonomous vehicles, used *Python* and logged to a *PostgreSQL* server],
        [Created a dashboard using *Flask/Dash* to allow for data exploration and identification of failures]
    )
)

#let groq_inc = experience(
    title : "Software Engineer - Firmware",
    company : "Groq Inc.",
    dates : (
        start : "Jan 2022",
        end : "Apr 2022",
    ),
    location : "Mountain View, CA, USA",
    description : (
        [Defined resource allocation over memory & processing units of tensors on Groq’s TPU],
        [Developed *Python* & *C++* API/firmware to improve streaming of instructions & data],
        [Used *PyBind11* for interoperability of *C++* & *Python* API/firmware for migration from older codebase],
        [Used timing analysis to prevent stream conflicts & allowed for interleaving of streams],
    )
)

#let huawei = experience(
    title : "Software Engineer - Digital Compression",
    company : "Huawei Technologies",
    dates : (
        start : "May 2020",
        end : "Aug 2020",
    ),
    location : "Waterloo, ON",
    description : (
        [Designed collision free non-cryptographic hash function (NCHF) in Galois Field 2 (GF-2)],
        [Analyzed NCHF with linear algebra, SAT & self-designed GF(2) matrix solver to verify properties],
        [Benchmarked the optimized SIMD hashing function against existing NCHFs (*Rust*, *C++*)],
        [Implemented novel border detection algorithm in *Go* using *probabilistic data structures* to maximize performance with Go-routines],
    )
)

#let mappedin = experience(
    title : "Software Engineer - Machine Learning",
    company : "MappedIn",
    dates : (
        start : "Sept 2019",
        end : "Dec 2019",
    ),
    location : "Waterloo, ON",
    description : (
        [Designed data pipelines for cleaning & analysis; integrated new *SQL* data warehouse],
        [Increased prediction accuracy from *40%* to *80%* on existing *LSTM* models with feature engineering, hyperparameter optimization, & automated data cleaning (*Python*, *SQL*)],
        [Created *Embeddings + SVM + Random Forest* ensemble models to replace existing *LSTM* models, reducing inference costs *2X* while maintaining prediction accuracy],
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
        [Developed software in *Python* & *SQL* for existing genetics analysis pipeline],
        [Resolved bugs in existing lab software (*Perl*, *Python*, *C\#*)],
        [Developed software for migration of genetic analysis database from GRCh37 to GRCh38],
    )
)

#let oicr = experience(
    title : "Software Engineer - Bioinformatics",
    website : "https://github.com/oicr-gsi/dashi",
    company : "Ontario Institute for Cancer Research",
    dates : (
        start : "Jan 2019",
        end : "Apr 2019",
    ),
    location : "Toronto, ON",
    description : (
        [Project lead of new statistical analysis tool for all future studies at OICR-GSI],
        [Designed genomics pipelines for visualization, cleaning, and analysis; interfacing with existing *R*, *Perl*, and *Shell* pipelines],
        [Wrote future-proof and extensible code to process big datasets (*Pandas*, *Shell*)],
        [Open-sourced project and version controlled with *Git*; created extensive documentation],
    )
)

#let risc_v_core = experience(
    title : "Pipelined Risc-V Core",
    description : (
        [Designed 5-stage pipelined *RISC-V* 32-bit core in *Verilog* using only synthesizable constructs],
        [Core synthesized on FPGA and successfully ran programs. Testbenches used to ensure cycle accuracy],

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
//   inset: 8pt,
//   fill: rgb("888888"),
  width: 100%,
//   radius: 6pt
)

#let mini_column(body) = style(styles => {
    let size = measure(body, styles)
    [
        #body
        // #size.width
        // #size.height
    ]
//   cell(height : 88%)[#body #size.width]
})

#grid(
    columns: (12%, 44%, 44%),
    rows: (auto,),
    gutter: 3pt,
    mini_column[
        = Software
        #software
        = Languages
        #languages
        = Lab Skills
        #lab_tools
        = Interests
        #interests
        = Award
        #awards
        ],
    mini_column[
        = Summary of Qualifications
        #Summary_Quals
        = Experience
        #uw_wong
        #groq_inc
        #uw_yash
        #huawei
        ],
    mini_column[
        = Experience
        #mappedin
        #robarts
        #oicr
        = Projects
        #hearing_aid
        #risc_v_core
        #ray_tracing
        // = Education
        // #education
        ],
)
