\version "2.18.2"

% Remove "engraved by" markup
\paper {
  oddFooterMarkup = ""
  evenFooterMarkup = ""
}

\header {
  title = "Romanze"
  subtitle = "from Grande Sonata M.S. 3 in A Major"
  composer = "N. Paganini"
}

musicVoiceOne = \relative {
  \override StringNumber.transparent = ##t

  \voiceOne

  \once \override StringNumber.transparent = ##f
  e'8.-1\2 f16-2\2 e8-1\2\glissando a4-2\2\glissando f8-2\2
  e4-1\2 e8\2 e8\2 d8-3\2 c8-1\2

  b8.-0 c16-1 b8-0 e4-3\2\glissando d8-3
  c4. a4 r8

  f'8.-2\2 e16-1\2 f8-2\2\glissando a4-2\2\glissando f8-2\2
  e8.-2\2 dis16-1\2 e8-2\2\glissando a4-2\2\glissando e8-2\2

  e8\2\glissando d8-2 b8-0 d8-3 c8-1 a8-2
  c4. \grace {b16_( d c} b8) r8 r8
}

musicVoiceTwo = \relative {
  \voiceTwo

  a,4. a4.
  a4. a4.

  e4. e4.
  a2.

  d4. d4.
  a4. a4.

  e4. a4.
  e2.
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \clef "treble_8"
      \time 6/8

      \set stringNumberOrientations = #'(left)
      \set fingeringOrientations = #'(left)

      \new Voice = "first" \musicVoiceOne
      \new Voice = "second" \musicVoiceTwo
    >>

    \new TabStaff <<
      \new TabVoice = "first" \musicVoiceOne
      \new TabVoice = "second" \musicVoiceTwo
    >>
  >>
}
