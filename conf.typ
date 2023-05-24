#let main_font_size = 8.5pt
#let caption_font_size = 9pt
#let name_font_size = 17pt
#let heading_font_size = 11pt
#let accent_1 = rgb("#57058B")
#let accent_10 = rgb("#BE33DA")
#let accent_2 = rgb("#787878")
#set text(font: ("Jost"), weight: "extralight", size: main_font_size)

#let page_heading(
    name : (),
    caption : none,
) = {
    set align(center)
    text(
        weight: "extralight",
        size: name_font_size,
    )[
        #name.first
    ]
    text(
        size: name_font_size,
        fill: accent_1,
        weight: "medium",
    )[
        #name.last
    ]
    linebreak()
    text(
        size: caption_font_size,
        style: "italic",
        // fill: rgb(50%, 50%, 50%),
    )[
        #name.caption
    ]
    linebreak()
    text(
        size: caption_font_size,
    )[
        // Consider replacing with a stack?
        #link("https://" + name.website)[#name.website]
        #h(2fr)
        #text(
            size: caption_font_size,
            style: "italic",
        )[
            #name.subcaption
        ]
        #h(2fr)
        #link("tel:" + name.phone)[#name.phone]
    ]
    linebreak()
    text(
        size: caption_font_size,
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


#let _company_fmt(company) = {
    text(
        weight: "regular",
        size: 10pt,
        fill: accent_2,
        company
        )
}

#let _dates_fmt(dates) = {
    text(
        weight: "regular",
        size: 10pt,
        fill: accent_2,
        dates
        )
}

#let _location_fmt(location) = {
    text(
        weight: "regular",
        size: 10pt,
        fill: accent_2,
        location
        )
}

#let _description_fmt(description) = {
    text(
        size: main_font_size,
        weight: "light",
        description
        )
}

/// Experience call all sub-bullets given by arrays must have a preceeding content
#let experience(
    title : "",
    website : "",
    company : "",
    dates : (
        start : "",
        end : "",
    ),
    location : "",
    description : (),
) = {

    if title != "" {
        box(heading(
            level: 2,
            link(website, title)
            ))
        if company != "" {
            " | "
        }
    }
    if company != "" {
            _company_fmt(company)
    }
    if website != "" {
        h(1em)
        link(website, box(image("icons/Editor/link.svg", height: heading_font_size*0.7)))
    }
    if title != "" and company != "" {
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
