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
        caption : "B.A.Sc Honours Electrical Engineering",
        // caption : "University of Waterloo",
        subcaption : "",
        // subcaption : "B.A.Sc Honours Electrical & Computer Engineering",
        website : "chandan.one"
    )
)

#let languages = {
    [Python, C++, SQL, Verilog, VHDL, MATLAB, Go, RISC-V]
}
#let libraries = {
    [Numpy, Pandas, PyTorch, Boost, FastAPI, Flask, CUDA]
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
    [KiCAD, LTSpice, Cadence Virtuoso, LayoutEditor, Quartus Prime]
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

#let enphase = experience(
    title : "Electrical Engineer - Compliance",
    website : "https://enphase.com/",
    company : "Enphase Energy",
    dates : (
        start : "Aug 2023",
        end : "Present",
    ),
    location : "Fremont/Petaluma, CA, USA",
    description : (
        // [Creating tests for compliance of microinverters and other products to *UL-1741* and *IEEE-1547*],
        // [Automation of tests in *Python* targetting lab safety and interoperability with lab instruments like powermeters, environment chambers, oscilliscopes etc.],
        [Designed and implemented automated compliance testing for PV inverters to IEEE and UL standards],
        //[],
        [Created business analytics and equipment management application, improving test equipment utilization by *20%* (*Ignition Perspective*,* Python*)],
        [Developed *MySQL* asset management database and interlock system ensuring regulatory compliance and saving \$50K yearly],
        // [Improved ease of testing for technicians by adding interoperability with *Ignition*],
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
        [Designed custom PCBs in *KiCAD* for driving small $mu$LED active/passive matrix displays using *STM32* microcontroller and accompanying circuitry],
        [Developed research plan for packaging of $mu$LEDs onto TFT packplanes using indium electroplating],
        [Characterized results using *SEM* and *X-Ray Spectroscopy*,],
        [Designed characterization setups for $mu$LEDs in *Fusion360* and *Arduino* interfaced with *Python*],
        [Validated flip-chip diebonding results with thermal and electrical simulations in *MATLAB*],
        [Designed and validated new $mu$LED layouts to improve mechanical and electrical performance],
        ),
)

#let uw_yash = experience(
    title : "Software Engineer - Autonomous Vehicles",
    website : "https://github.com/kunalchandan/CL2-AutoDetective",
    company : "University of Waterloo",
    dates : (
        start : "Jan 2023",
        end : "Apr 2023",
    ),
    location : "Waterloo, ON, CA",
    description : (
        [Fault analysis of autonomous vehicles, used *Python*, logged to *PostgreSQL* server],
        [Created a dashboard using *Flask/Dash* to allow for data exploration and identification of failures]
    )
)

#let groq_inc = experience(
    title : "Software Engineer - Firmware",
    website  : "https://groq.com/",
    company : "Groq Inc.",
    dates : (
        start : "Jan 2022",
        end : "Apr 2022",
    ),
    location : "Mountain View, CA, USA",
    description : (
        [Defined algorithm for resource allocation over memory and processing units of tensors on Groq’s TPU],
        [Developed *Python* and *C++* firmware API to improve streaming of instructions and data],
        [Used *PyBind11* for interoperability between C++ and Python firmware during codebase migration],
        // [Used timing analysis to prevent stream conflicts & allowed for interleaving of streams],
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
        [Designed and analyzed non-cryptographic hash (NCHF) with linear algebra, SAT and self-designed $G F(2)$ matrix solver to verify properties],
        [Benchmarked the optimized SIMD hashing function against existing NCHFs (*Rust*, *C++*)],
        [Implemented novel border detection algorithm in *Go* using *probabilistic data structures* to maximize performance with Go-routines],
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
        [Designed pipelines for data cleaning and analysis; integrated new *SQL* data warehouse],
        [Increased prediction accuracy from *40%* to *80%* on existing *LSTM* models with feature engineering, hyperparameter optimization, and automated data cleaning (*Python*, *SQL*)],
        [Created *Embeddings* + *SVM* + *Random Forest* ensemble models to replace existing LSTM models, reducing inference costs *2x* while maintaining prediction accuracy],
    )
)

// #let robarts = experience(
//     title : "Software Engineer - Bioinformatics",
//     company : "Robarts Research Institute",
//     dates : (
//         start : "Jan 2021",
//         end : "Apr 2021",
//     ),
//     location : "London, ON",
//     description : (
//         // [Developed software for migration of genetic analysis database from GRCh37 to GRCh38],
//         // [Developed software in *Python* & *SQL* for existing genetics analysis pipeline],
//         // [Resolved bugs in existing lab software (*Perl*, *Python*, *C\#*)],
//     )
// )

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

#let risc_v_core = experience(
    title : "Pipelined Risc-V Core",
    description : (
        [Designed 5-stage pipelined *RISC-V* 32-bit core in *Verilog* using only synthesizable constructs],
        [Core synthesized on FPGA and successfully ran branching and recursive algorithms. Testbenches used to ensure cycle accuracy],

    )
)

#let hearing_aid = experience(
    title : "Beamforming Hearing Aid System",
    website : "https://chandan.one/posts/mic-array/",
    description : (
        [Designed 4-channel microphone array PCB with active analog bandpass filtering, differential amplification, and multichannel *ADC* over *SPI* to Raspberry Pi (*KiCAD*)],
        [Created *Flask* server on R-Pi to compress and transfer audio data to *Pytorch* neural network for further digital filtering and beamforming],
        [Adapted and trained Pytorch quantized voice isolation model to minimize latency while maintaining desired audio quality],
        [Used *multiprocessing*, *asyncio*, and *websockets* to maximize system throughput, providing continuous audio output],
    )
)

#let ray_tracing = experience(
    title : "Ray Tracing Engine",
    website : "https://github.com/kunalchandan/ToyTracer/",
    description : (
        [Implemented 3D recursive path-tracing for arbitrary materials on basic geometric shapes],
        // [Used traits],
        [Used *nalgebra* for arbitrary rotations and positions of camera and objects],
        [Parallel processing of ray-tracing using *rayon* yielding *\~10X* performance speed-up],

    )
)

#let education = experience(
    title : "University of Waterloo -- B.A.Sc Electrical Engineering",
    description : (
        [Key Courses: Electronic devices, semiconductor physics, analog/digital integrated circuits, analog/digital/multivariable control systems],
        [Select Awards and Certifications: Baylis Medical Capstone Design Award, #link("https://qnfcf.uwaterloo.ca/", "QNFCF") and #link("https://uwaterloo.ca/giga-to-nanoelectronics-centre/lab-equipment", "G2N") Cleanroom Certifications],

    )

)
#box(height: 1.7cm,
    columns(1, gutter: 5pt)[
        #text(weight: "medium", size : heading_font_size, fill : accent_1, [Software:])
        #software

        #text(weight: "medium", size : heading_font_size, fill : accent_1, [Languages:])
        #languages

        #text(weight: "medium", size : heading_font_size, fill : accent_1, [Libraries:])
        #libraries
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
#box(height: 23.6cm,
    columns(1, gutter: 10pt)[

    = Education
    #education
    = Experience
    #enphase
    #uw_wong
    #groq_inc
    // #uw_yash
    #huawei
    #mappedin
    // #oicr
    = Projects
    #hearing_aid
    #risc_v_core
    ]
)

