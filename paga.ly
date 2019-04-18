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

  \set stringNumberOrientations = #'(left)
  \set fingeringOrientations = #'(left)

  \voiceOne

  \once \override StringNumber.transparent = ##f
  e'8.-1\2 f16-2\2 e8-1\2\glissando a4-2\2\glissando f8-2\2
  e4-1\2 e8\2 e8\2 d-3\2 c-1\2

  b8.-0 c16-1 b8-0 e4-3\2\glissando d8-3
  c4. a4 r8

  f'8.-2\2 e16-1\2 f8-2\2\glissando a4-2\2\glissando f8-2\2
  e8.-2\2 dis16-1\2 e8-2\2\glissando a4-2\2\glissando e8-2\2

  e8\2\glissando d-2 b-0 d-3 c-1 a-2
  c4. \grace {b16_( d c} b8) r r

  % 9

  e8.-1\2 f16-2\2 e8-1\2\glissando a4-2\2\glissando f8-2\2
  e4-1\2 e8-0
  \once \override StringNumber.transparent = ##f
  <e-1\3 e'-4\1>8 <d-1\3 d'-4>\glissando <c\3 c'>

  b8. c16 b8 <e-1\3 e'-4\1>4\glissando <d\3 d'>8\glissando
  \once \set stringNumberOrientations = #'(up)  % Workaround for weird finger number placement
  <c\3-1 c'-4>4. <a\3 a'>4 r8


}

musicVoiceTwo = \relative {
  \voiceTwo

  a,4. a
  a a

  e e
  a2.

  d4. d
  a a

  e a
  e2.

  % 9

  a4. a
  a2.

  e4. e
  a2.

  d4. d
  a a

  e a4 f8
  e2.
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \clef "treble_8"
      \time 6/8

      \new Voice = "first" \musicVoiceOne
      \new Voice = "second" \musicVoiceTwo
    >>

    \new TabStaff <<
      \new TabVoice = "first" \musicVoiceOne
      \new TabVoice = "second" \musicVoiceTwo
    >>
  >>
}
