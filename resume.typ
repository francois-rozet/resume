#import "@preview/fontawesome:0.2.1": fa-icon

// Document
#set document(title: "Resume", author: "François Rozet")

// Settings
#set page(paper: "a4", margin: 2cm, numbering: "1")
#set text(size: 9pt, font: "Fira Sans", weight: "light")
#set strong(delta: 200)
#set par(justify: true)

#show heading: set text(weight: "medium")
#show heading.where(level: 1): it => grid(
  columns: (auto, 0.33em, 1fr),
  it.body, none, align(bottom, line(length: 100%)),
)

// Macros
#let icon(name, size: 1.05em, ..args) = fa-icon(name, size: size, ..args)

// Head
#align(
  center,
  stack(
    text(size: 2.5em, [François #text(weight: "medium", [ROZET])]),
    v(0.35cm),
    text(size: 1.25em, [PhD student #sym.dot.c Machine learning #sym.dot.c Developer]),
    v(0.25cm),
    [
      #icon("google") #link("https://scholar.google.com/citations?user=C-WS1pwAAAAJ", [C-WS1pwAAAAJ])
      #h(0.5cm)
      #icon("github") #link("https://github.com/francois-rozet", [francois-rozet])
      #h(0.5cm)
      #icon("twitter") #link("https://twitter.com/FrancoisRozet", [FrancoisRozet])
      #h(0.5cm)
      #icon("envelope", solid: true) #link("mailto:francois.rozet@uliege.be", [francois.rozet\@uliege.be])
    ],
  ),
)

= #icon("graduation-cap") Education

=== PhD in Deep Learning
#icon("calendar") Sep 2021 -- Present #h(0.25cm) #icon("landmark") University of Liège #h(0.25cm) #icon("location-dot") Belgium

I currently pursue a PhD degree in the field of deep learning under the supervision of Prof. Gilles LOUPPE. My research consists in developing and applying deep learning methods to Bayesian inference problems in large-scale dynamical systems (oceans, atmospheres, molecules, ...). My work lies at the intersection of many subjects, most notably generative modeling, inverse problems and density estimation.

=== MSc in Data Science and Engineering

#icon("calendar") Sep 2019 -- Jul 2021 #h(0.25cm) #icon("landmark") University of Liège #h(0.25cm) #icon("location-dot") Belgium

My Master's degree program was built around data technologies, artificial intelligence and their mathematical and computational foundations. I graduated #emph[summa cum laude] with the congratulations of the examination committee (top 1%) and received two awards for my Master's thesis, titled "Arbitrary Marginal Neural Ratio Estimation for Likelihood-free Inference".

= #icon("pen") Publications

#text[
  #show link: set text(fill: blue)
  #show regex("François Rozet"): set text(weight: "regular", style: "italic")

  #bibliography("publications.bib", title: none, full: true, style: "custom.csl")
]

= #icon("comment", solid: true) Talks

#v(0.5em)

- #emph[Learning Diffusion Priors from Observations by Expectation Maximization] -- Tübingen AI Center (Jul 2024)
- #emph[Diffusion Models meet Data Assimilation] -- ENGIE (Jul 2024)
- #emph[Score-based Generative Models meet Data Assimilation] -- ESA-ECMWF Workshop (May 2024)

= #icon("users", solid: true) Community

=== Reviewing

Since 2022, I am a recurrent peer-reviewer for machine learning journals, conferences and workshops such as NeurIPS, ICML, ICLR, AISTATS and TMLR.

#pagebreak()

= #icon("trophy") Honors & Awards

#v(0.5em)

- Research fellow grant -- F.R.S.-FNRS (2022)
- Best Master's thesis award -- AIM (2021)
- Best Master's thesis award -- AILg & NRB (2021)
- Pisart scholarship -- University of Liège (2016)
- National Physics olympiad 3#super[rd] laureate -- ABPPC (2016)
- National Chemistry olympiad 7#super[th] laureate -- ACLg (2015)

= #icon("code") Software

=== Azula
#icon("calendar") July 2024 #h(0.25cm) #icon("github") #link("https://github.com/probabilists/azlua", "probabilists/azlua") #h(0.25cm) #icon("star", solid: true) 85

Azula is a Python package that implements diffusion models in PyTorch. Its goal is to unify the different formalisms and notations of the generative diffusion models literature into a single, convenient and hackable interface.

=== Inox
#icon("calendar") Dec 2023 #h(0.25cm) #icon("github") #link("https://github.com/francois-rozet/inox", "francois-rozet/inox") #h(0.25cm) #icon("star", solid: true) 30

Inox is a minimal JAX library for neural networks with an intuitive PyTorch-like syntax. Modules are represented as PyTrees, which enables complex architectures, easy manipulations, and functional transformations.

=== Zuko
#icon("calendar") Oct 2022 #h(0.25cm) #icon("github") #link("https://github.com/probabilists/zuko", "probabilists/zuko") #h(0.25cm) #icon("star", solid: true) 324

Zuko is a Python package that implements normalizing ﬂows in PyTorch. It relies heavily on PyTorch's built-in distributions and transformations, which makes the implementation concise, easy to understand and extend.

=== LAMPE
#icon("calendar") Dec 2021 #h(0.25cm) #icon("github") #link("https://github.com/probabilists/lampe", "probabilists/lampe") #h(0.25cm) #icon("star", solid: true) 119

LAMPE is a Python package that focuses on amortized estimation of the posterior distribution of simulators, without relying on explicit likelihood functions. The package provides PyTorch implementations of modern amortized simulation-based inference algorithms like neural ratio estimation (NRE), neural posterior estimation (NPE) and more.

=== PIQA
#icon("calendar") Oct 2020 #h(0.25cm) #icon("github") #link("https://github.com/francois-rozet/piqa", "francois-rozet/piqa") #h(0.25cm) #icon("star", solid: true) 405

PIQA is a collection of PyTorch metrics for image quality assessment in various image processing tasks such as generation, denoising, super-resolution, interpolation, etc. It focuses on the eﬃciency, conciseness and understandability of its (sub-)modules, such that anyone can easily reuse and/or adapt them to its needs

#grid(
  columns: (1fr, 1fr),
  gutter: 0.5cm,
  [
    = #icon("earth-europe") Languages

    #v(0.5em)

    #grid(
      columns: (auto, auto),
      gutter: 1em,
      strong[French], [native],
      strong[English], [proficient (C1, TOEFL 106)],
      strong[Dutch], [elementary (A1)],
    )
  ],
  [
    = #icon("wrench") Skills

    #v(0.5em)

    Python #icon("python") (NumPy, PyTorch, JAX, ...), C/C++, Julia, HTML #icon("html5"), JavaScript #icon("square-js"), Git #icon("git-alt"), GitHub #icon("github"), Linux #icon("linux"), Docker #icon("docker"), Slurm
  ],
)

= #icon("book") Teaching

=== Teaching assistant
#icon("calendar") Sep 2021 -- Present #h(0.25cm) #icon("landmark") University of Liège

- Introduction to artificial intelligence -- Prof. Gilles LOUPPE (since 2021)
- Deep learning -- Prof. Gilles LOUPPE (since 2021)
- Data structure and algorithms -- Prof. Pierre GEURTS (2021-2022)
- Functional programming -- Prof. Christophe DEBRUYNE (2021-2022)

=== Student instructor
#icon("calendar") Sep 2017 -- Jul 2021 #h(0.25cm) #icon("landmark") University of Liège

- Introduction to machine learning -- Prof. Pierre GEURTS (2020-2021)
- Introduction to artificial intelligence -- Prof. Gilles LOUPPE (2020-2021)
- Elements of statistics -- Prof. Louis WEHENKEL (2019-2020)
- Applied mathematics -- Prof. Christophe GEUZAINE (2019-2020)
// - Introduction to numerical methods -- Prof. Quentin LOUVEAUX (2018-2019)
// - Electricity and electromagnetism -- Prof. Hervé CAPS (2017-2019)
// - Newtonian mechanics -- Prof. Hervé CAPS (2017-2019)
