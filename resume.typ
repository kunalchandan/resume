#set text(font: ("Lato"), weight: "light")
#set page(
    fill: rgb("222222"),
    margin: (
        x : 4em,
        y : 2em,
    )

    )
#set text(fill: rgb("fdfdfd"))

#import "conf.typ": page_heading

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


#let languages = read("languages.txt")
= Languages
- C++
- Rust
    - nalgebra
    - Rayon
- Python
    - Pandas
    - Numpy
    - Scipy
    - TensorFlow
    - Pytorch
    - OpenCV
- MATLAB
- Go
- SQL
- Verilog
- RISC-V
- Shell
- LaTeX


// #list(
//     [C++],
//     [Rust
//     #list(
//         [nalgebra],
//         [Rayon],
//     )],
//     [Python
//     #list(
//         [Pandas],
//         [Numpy],
//         [Scipy],
//         [TensorFlow],
//         [Pytorch],
//         [OpenCV],
//     )],
//     [MATLAB],
//     [Go],
//     [SQL],
//     [Verilog],
//     [RISC-V],
//     [Shell],
//     [LaTeX],
// )

// = Languages
// #for line in (languages.split("\n")) {
//     if line.contains("^") {
//         line.slice(line.position("^") + 1)
//         // - content(line)
//     }
//     else {
//         // + content(line)
//     }
//     linebreak()
// }

