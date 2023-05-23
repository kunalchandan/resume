#set text(font: ("Jost"), weight: "light")

#let accent_1 = rgb("#57058B")
#let accent_2 = rgb("#787878")

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
        fill: accent_1,
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
        weight: "medium",
        size: 10pt,
        fill: accent_2,
        company
        )
}

#let _dates_fmt(dates) = {
    text(
        weight: "medium",
        size: 10pt,
        fill: accent_2,
        dates
        )
}

#let _location_fmt(location) = {
    text(
        weight: "medium",
        size: 10pt,
        fill: accent_2,
        location
        )
}

#let _description_fmt(description) = {
    text(
        size: 10pt,
        weight: "light",
        description
        )
}

/// Experience call all sub-bullets given by arrays must have a preceeding content
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
    if title != "" and company != "" {
        box(heading(
            level: 2,
            title
            )) + " | " + _company_fmt(company)
        linebreak()
    }
    if dates.start != "" and dates.end != "" {
        _dates_fmt(dates.start + " - " + dates.end + " | ")
    }
    if location != "" {
        _location_fmt(location)
        linebreak()
    }
    _description_fmt(
        for (i, desc) in description.enumerate() {
            if type(description.at(default : "", i+1)) == "array" {
                list(desc + "" + description.at(i+1).map(list).join())
            } else if type(desc) == "array" {
            } else {
                list(desc)
            }
        }
    )
}
