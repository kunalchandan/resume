#set text(font: ("Lato"), weight: "light")
// #set page(fill: rgb("222222"))
// #set text(fill: rgb("fdfdfd"))

#import "conf.typ": conf
#show : heading => conf(
    name : (
        first : "Kunal",
        last  : "Chandan",
        email : "kchandan@uwaterloo.ca",
        phone : "647-785-1313",
        github : "kunalchandan",
        linkedin : "kunal-chandan",
        caption : "B.A.Sc Honours Electrical and Computer Engineering",
    )
)

Kunal Chandan

B.A.Sc Honours Electrical Engineering Candidate

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