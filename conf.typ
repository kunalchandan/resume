#set text(font: ("Lato"), weight: "light")

#let page_heading(
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
        style: "italic",
        // fill: rgb(50%, 50%, 50%),
    )[
        #name.caption
    ]
    linebreak()
    text(
        size: 1em,
    )[
        // Consider replacing with a stack?
        #link("https://" + name.website)[#name.website]
        #h(2fr)
        #text(
            size: 1.1em,
            style: "italic",
        )[
            #name.subcaption
        ]
        #h(2fr)
        #link("tel:" + name.phone)[#name.phone]
    ]
    linebreak()
    text(
        size: 1em,
    )[
        // Consider replacing with a stack?
        #link("https://www.github.com/" + name.github)[github/#name.github]
        #h(2fr)
        #link("mailto:" + name.email)[#name.email]
        #h(2fr)
        #link("https://www.linkedin.com/in/" + name.linkedin)[linkedin/#name.linkedin]
    ]
    line(
        length: 100%,
        stroke:0.5pt,
    )
}



#let _title_fmt(title) = {
    text(
        weight: "black",
        title
        )
}

#let _company_fmt(company) = {
    text(
        weight: "black",
        company
        )
}

#let _dates_fmt(dates) = {
    text(
        weight: "black",
        dates
        )
}

#let _location_fmt(location) = {
    text(
        weight: "black",
        location
        )
}

#let _description_fmt(description) = {
    text(
        size: 0.7em,
        weight: "light",
        description
        )
}


#let experience(
    title : "",
    company : "",
    dates : (
        start : "",
        end : "",
    ),
    location : "",
    description : (),
) = {

    box(heading(
        level: 2,
        title
        )) + " | " + _company_fmt(company)
    linebreak()
    _dates_fmt(dates.start + " - " + dates.end + " | ")
    _location_fmt(location)
    linebreak()
    _description_fmt(
        for desc in description {
            list(desc)
        }
    )
}
