/*
References:
  1. https://typst.app/project/p_Bky8MIksPGK39OpsflJw
*/

#import "@preview/fontawesome:0.2.0" as fa

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
  body
) = {
  let fonts = ()
  if lang == "en" {
    if use-serif {
      fonts = (
        "Georgia",
        "Palatino",
        "Garamond",
        "Linux Libertine",
      )
    } else {
      fonts = (
        "Helvetica Neue",
        "Gill Sans",
        "Optima",
      )
    }
  } else if lang == "zh" {
    if use-serif {
      fonts = (
        "Garamond",
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
  )
  set page(
    paper: "a4",
    margin: (x: 1.5cm, y: 2cm),
    numbering: "1 / 1",
  )
  set par(
    justify: true,
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

#let TeX = style(styles => {
  // set text(font: "New Computer Modern")
  let e = measure("E", styles)
  let T = "T"
  let E = text(1em, baseline: e.height * 0.31, "E")
  let X = "X"
  box(T + h(-0.15em) + E + h(-0.125em) + X)
})

#let LaTeX = style(styles => {
  // set text(font: "New Computer Modern")
  let a-size = 0.66em
  let l = measure("L", styles)
  let a = measure(text(a-size, "A"), styles)
  let L = "L"
  let A = box(scale(x: 105%, text(a-size, baseline: a.height - l.height, "A")))
  box(L + h(-a.width * 0.67) + A + h(-a.width * 0.25) + TeX)
})
