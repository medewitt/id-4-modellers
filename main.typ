#import "assets/template.typ": project
#import "assets/typst-boxes.typ": *
#import "assets/typst-cd.typ": *
//#import "assets/index.typ": *


#show: project.with(
  title: "Infectious Diseases for Modellers",
  authors: (
    (name: "Michael E. DeWitt", 
    email: "medewitt@wakehealth.edu", 
    affiliation: "Wake Forest University School of Medicine", 
    postal: "Section on Infectious Diseases", 
    phone: ""),
  ),
  abstract: lorem(59)
)

#include "chapter/introduction.typ"
//#show figure.where(kind: "jkrb_index"): it => {}
#pagebreak()

#include "chapter/host-immune.typ"


#pagebreak(weak: true)
#set page(header: [])
#pagebreak(weak: true)
#include "chapter/glossary.typ"
#pagebreak(weak: true)


#bibliography("library.bib")
