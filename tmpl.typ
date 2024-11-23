/*
References:
  1. https://typst.app/project/p_Bky8MIksPGK39OpsflJw
*/

#import "@preview/fontawesome:0.5.0" as fa

#let entry(
  tl: lorem(4), // "Role | Employer/Project",
  tr: datetime.today().display(),
  dl: [], // "Summary"
  dr: [], // "Location"
  details,
) = {
  tl; h(1fr); tr; linebreak();
  if dl != [] or dr != [] {
    dl; h(1fr); dr; linebreak();
  }
  details;
}

#let tmpl(
  author: "",
  lang: "en", // https://en.wikipedia.org/wiki/List_of_ISO_639_language_codes
  use-serif: true,
  align: "left",
  inline-heading: true,
  textsize: 11pt, // The recommend resume text size is from `10pt` to `12pt`
  margin: (x: 1.5cm, y: 2cm),
  body
) = {
  let fonts = ()
  if lang == "en" {
    if use-serif {
      fonts = (
        "Georgia",
        "Palatino",
        "Garamond",
        "Libertinus Serif",
      )
    } else {
      fonts = (
        "Helvetica Neue",
        "Gill Sans",
        "Optima",
        "Libertinus Sans",
      )
    }
  } else if lang == "zh" {
    if use-serif {
      fonts = (
        "Times New Roman",
        "Noto Serif CJK SC",
        "Source Han Serif SC",
      )
    } else {
      fonts = (
        "Helvetica Neue",
        "Gill Sans",
        "Optima",
        "Noto Sans CJK SC",
        "Source Han Sans SC",
      )
    }
  }

  set document(
    title: author,
    author: author,
  )
  set text(
    font: fonts,
    lang: lang,
    size: textsize,
    number-type: if lang == "zh" {"lining"} else {auto},
  )
  set page(
    paper: "a4",
    margin: margin,
    numbering: "1 / 1",
  )
  set par(
    justify: false,
    leading: if lang == "en" {0.65em} else {0.65em},
  )

  show heading.where(level: 1): it => block([
    #set text(size: 22pt, weight: "regular")
    #smallcaps(it.body)
  ])
  show heading.where(level: 2): it => block([
    #set text(size: textsize * 1.4, weight: "bold")
    #let hline = line(length: 100%, stroke: 1pt)

    #if inline-heading [
      #it.body
      #box(width: 1fr, hline)
    ] else [
      #pad(bottom: -15pt, it.body)
      #hline
    ]
  ])
  show link: underline
  show bibliography: set text(lang: "en")
  body
}

// https://github.com/OrangeX4/typst-talk/blob/main/utils.typ
// https://github.com/typst/typst/discussions/1732
#let TeX = {
  set text(font: "New Computer Modern")
  box(width: 1.7em, {
    [T]
    place(top, dx: 0.56em, dy: 0.22em)[E]
    place(top, dx: 1.1em)[X]
  })
}

#let LaTeX = {
  set text(font: "New Computer Modern")
  box(width: 2.55em, {
    [L]
    place(top, dx: 0.3em, text(size: 0.7em)[A])
    place(top, dx: 0.7em)[#TeX]
  })
}
