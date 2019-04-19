\version "2.18.2"

% Remove "engraved by" markup
\paper {
  oddFooterMarkup = ""
  evenFooterMarkup = ""
}

\header {
  title = "E phrygian (A minor)"
}

musicVoiceOne = \relative {
  \set stringNumberOrientations = #'(left)
  \set fingeringOrientations = #'(left)

  e,-0\6
  f-1
  g-3
  a-0\5
  b-2
  c-3
  d-0\4
  e-2
  f-3
  g-0\3
  a-2
  b-0\2
  c-1
  d-3
  e-0\1
  f-1
  g-3

  f-1
  e-0
  d-3\2
  c-1
  b-0
  a-2\3
  g-0
  f-3\4
  e-2
  d-0
  c-3\5
  b-2
  a-0
  g-3\6
  f-1
  e1-0

  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \clef "treble_8"
      \musicVoiceOne
    >>
    \new TabStaff <<
      \musicVoiceOne
    >>
  >>
}
