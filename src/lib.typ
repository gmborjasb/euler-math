
#import "styles/typography.typ": setup-typography
#import "styles/headings.typ": setup-headings
#import "styles/page.typ": setup-page


#let neo-article(
  title: none,
  subtitle: none,
  body,
) = {
  // A. Basic configuration
  set document(title: title)
  set text(size: 12pt)
  set par(justify: true)
  
  // B. Apply theme
  show: setup-typography
  show: setup-headings
  show: setup-page
  
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