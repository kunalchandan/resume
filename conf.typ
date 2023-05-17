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

}