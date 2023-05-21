#set text(font: ("Lato"), weight: "light")
#set page(
    // fill: rgb("222222"),
    margin: (
        x : 4em,
        y : 2em,
    )

    )
// #set text(fill: rgb("fdfdfd")s)

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

// #show: text("sfasj k djla k ")


sdklfjs
sdlkfj

sdf

d

dsfsdf


sdfsdf

sdf

sdf
asdfas
sd
#stack(
        dir: ltr,
        rect(fill: rgb("#000000"), height: 30pt, width: 40pt),
        rect(fill: rgb("#000000"), height: 30pt, width: 120pt),
        rect(fill: rgb("#000000"), height: 30pt, width: 90pt),
    )

#let cell = rect.with(
  inset: 8pt,
  fill: rgb("e4e5ea"),
  width: 100%,
  radius: 6pt
)



#set list(marker: ([•], [--]))
#let languages = read("languages.txt")
= Languages

// #list(languages.split("\n"))

= Languages
#for line in (languages.split("\n")) {
    if line.contains("^") {
        line
        // - content(line)
    }
    else {
        // + content(line)
    }
}