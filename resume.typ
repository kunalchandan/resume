#set text(font: ("Jost"), weight: "light")
#set page(
    // fill: rgb("222222"),
    margin: (
        x : 4em,
        y : 2em,
    )

    )
// #set text(fill: rgb("fdfdfd"))



#import "conf.typ": page_heading, experience, accent_1


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
        text(weight: "light", upper(it))
    }
    else if it.level == 3 {
        text(weight: "medium", it)
    } else {
        it
    }
}

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

#let UW_experience_1 = experience(
    title : "Research Electrical Engineer",
    company : "University of Waterloo",
    dates : (
        start : "Sept 2022",
        end : "Apr 2023",
    ),
    location : "Waterloo, ON",
    description : (
        [Design],
        ([skldj f], [ssf]),
        [Fabrication],
        [Simulation],
        ),
)

#let cell = rect.with(
  inset: 8pt,
//   fill: rgb("888888"),
  width: 100%,
  radius: 6pt
)

#let mini_column(body) = style(styles => {
  let size = measure(body, styles)
  [#body #size.width]
//   cell(height : 88%)[#body #size.width]
})

#grid(
    columns: (18%, 82%),
    rows: (auto,),
    gutter: 3pt,
    mini_column[#languages],
    mini_column[
        = Summary of Qualifications

        = Experience
        #UW_experience_1],
)
