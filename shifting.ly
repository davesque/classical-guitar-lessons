\version "2.18.2"

% Remove "engraved by" markup
\paper {
  oddFooterMarkup = ""
  evenFooterMarkup = ""
}

\header {
  title = "Basic Shifting Exercise"
}

musicVoiceOne = \relative {
  \override StringNumber.transparent = ##t

  \set stringNumberOrientations = #'(left)
  \set fingeringOrientations = #'(left)

  \repeat volta 2 {
    \once \override StringNumber.transparent = ##f
    e'-0\1^\markup { On 1st string... }
    f-1
    g-3
    a-1
    b-3
    c-4
    d-1
    e-3

    f-4
    e-3
    d-1
    c-4
    b-3
    a-1
    g-3
    f-1
  }

  \break

  \repeat volta 2 {
    e4.-0^\markup { Variation 1 }
    f8-1
    g4.-3
    a8-1
    b4.-3
    c8-4
    d4.-1
    e8-3

    f4.-4
    e8-3
    d4.-1
    c8-4
    b4.-3
    a8-1
    g4.-3
    f8-1
  }

  \break

  \repeat volta 2 {
    e8-0^\markup { Variation 2 }
    f4.-1
    g8-3
    a4.-1
    b8-3
    c4.-4
    d8-1
    e4.-3

    f8-4
    e4.-3
    d8-1
    c4.-4
    b8-3
    a4.-1
    g8-3
    f4.-1
  }

  \break

  \repeat volta 2 {
    \once \override StringNumber.transparent = ##f
    b,4-0\2^\markup { On 2nd string... }
    c-1\2
    d-3\2
    e-1\2
    f-2\2
    g-4\2
    a-1\2
    b-3\2

    c-4\2
    b-3\2
    a-1\2
    g-4\2
    f-2\2
    e-1\2
    d-3\2
    c-1\2_\markup {
      \halign #3 { \small { ...and variations. } }
    }
  }

  \break
  \repeat volta 2 {
    \once \override StringNumber.transparent = ##f
    g4-0\3^\markup { On 3rd string... }
    a-1\3
    b-3\3
    c-4\3
    d-1\3
    e-3\3
    f-4\3
    g-1\3
    a-3\3
    g-1\3
    f-4\3
    e-3\3
    d-1\3
    c-4\3
    b-3\3
    a-1\3_\markup {
      \halign #3 { \small { ...and variations. } }
    }
  }

  \break
  \repeat volta 2 {
    \once \override StringNumber.transparent = ##f
    d,4-0\4^\markup {On 4th string...}
    e-1\4
    f-2\4
    g-4\4
    a-1\4
    b-3\4
    c-4\4
    d-1\4
    e-4\4
    d-1\4
    c-4\4
    b-3\4
    a-1\4
    g-4\4
    f-2\4
    e-1\4_\markup {
      \halign #3 { \small { ...and variations. } }
    }
  }

  \break
  \repeat volta 2 {
    \once \override StringNumber.transparent = ##f
    a,4-0\5^\markup {On 5th string...}
    b-1\5
    c-2\5
    d-4\5
    e-1\5
    f-2\5
    g-4\5
    a-1\5
    b-3\5
    a-1\5
    g-4\5
    f-2\5
    e-1\5
    d-4\5
    c-2\5
    b-1\5_\markup {
      \halign #3 { \small { ...and variations. } }
    }
  }

  \break
  \repeat volta 2 {
    \once \override StringNumber.transparent = ##f
    e,4-0\6^\markup {On 6th string...}
    f-1\6
    g-3\6
    a-1\6
    b-3\6
    c-4\6
    d-1\6
    e-3\6
    f-4\6
    e-3\6
    d-1\6
    c-4\6
    b-3\6
    a-1\6
    g-3\6
    f-1\6_\markup {
      \halign #3 { \small { ...and variations. } }
    }
  }
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
