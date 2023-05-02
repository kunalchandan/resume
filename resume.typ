#set text(font: ("Lato"), weight: "light")
Kunal Chandan

B.A.Sc Honours Electrical Engineering Candidate

#let cell = rect.with(
  inset: 8pt,
  fill: rgb("e4e5ea"),
  width: 100%,
  radius: 6pt
)

#link("mailto:kchandan@uwaterloo.ca")[kchandan\@uwaterloo.ca]
#link("https://www.linkedin.com/in/kunal-chandan/")[linkedin/kunal-chandan]
#link("http://github.com/kunalchandan")[github/kunalchandan]
#link("tel:6477851313")[647-785-1313]


#set list(marker: ([•], [--]))
#let languages = read("languages.txt")
= Languages

#for line in (languages.split("\n")) {
    list(line)
}