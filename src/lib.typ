
#import "styles/typography.typ": setup-typography
#import "styles/headings.typ": setup-headings
#import "styles/page.typ": setup-page
#import "components/theorems.typ": (
  setup-theorems, theorem, theorem-box, lemma, corollary, definition, proposition, property, example,
  exercise, problem,
)
#import "styles/colors.typ" : neo-blue-sec


#let neo-article(
  title: none,
  subtitle: none,
  body,
) = {
  // A. Basic configuration
  set document(title: title)
  set text(size: 12pt, font: "New Computer Modern")
  set par(justify: true)
  show emph: it => {
    text(fill: neo-blue-sec, weight: "bold", font: "New Computer Modern Sans", it.body)
  }

  // To see in next version
  // 
  // show strong: it => {
  //   text(fill: rgb("#00897B"), weight: "bold", font: "New Computer Modern", it.body)
  // }
  
  // B. Apply theme
  show: setup-typography
  show: setup-headings
  show: setup-page
  show: setup-theorems
  
  // C. (Optional) 
  if title != none {
    align(center)[
      #v(3cm)
      #text(size: 30pt, font: "New Computer Modern Sans", weight: "bold")[#title] 

      #text(size: 20pt)[#subtitle]
      #v(1cm)
    ]
  }
  
  // D. Body
  body
}