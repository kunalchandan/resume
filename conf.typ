#set text(font: ("Lato"), weight: "light")

#let conf(
    name : (),
    caption : none,
) = {
    set align(center)
    text(
        size: 2em,
    )[
        #name.first
    ]
    text(
        size: 2em,
        weight: "medium",
    )[
        #name.last
    ]
    linebreak()
    text(
        size: 1.1em,
    )[
        #name.caption
    ]
    linebreak()
    text(
        size: 1.1em,
    )[
        #link("mailto:" + name.email)[#name.email]
        #link("tel:" + name.phone)[#name.phone]
        #link("https://www.github.com/" + name.github)[github/#name.github]
        #link("https://www.linkedin.com/in/" + name.linkedin)[linkedin/#name.linkedin]
    ] // TODO link these

}