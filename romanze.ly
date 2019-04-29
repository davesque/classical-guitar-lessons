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

#(define RH rightHandFinger)

musicVoiceOne = \relative {
  \override StringNumber.transparent = ##t

  \set stringNumberOrientations = #'(left)
  \set fingeringOrientations = #'(left)
  \set strokeFingerOrientations = #'(left)

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

  \once \override StringNumber.transparent = ##f
  \acciaccatura g'8-3\1 f8.-1 e16-0 f8-1 \acciaccatura gis8-1 a4-2
  \once \override StringNumber.transparent = ##f
  f8-3\2
  e8.-2\2 dis16-1\2 e8-2\2\glissando a4-2\2\glissando e8-2\2

  e8\2 d-2_( b-0) c-1_( b-0) a-2
  <b, e gis b e>4 r8\fermata r4.^\markup { \italic {Cadenz} }

  % 17

  \break

  c'4-1-\RH #3 e8 \acciaccatura d-4 c b c
  cis4-2 d8-3 b,16-1 a''-4 g-2 fis-2 f-1 d-3

  c4-1 e8 \acciaccatura d-4 c b c
  cis4-2 d8-3 b,16-1 a''-4 g-2 fis-2 f-1 d-3

  c4 g'8 g f e
  e4-0 d8-4 f,,16 cis''-2 d-3 e-0 f-1 a-4

  c,4-1 c8 d-4 g-4 f
  f4-1 e8 a,,16 <e'-2 e'> <f-3 f'-1> <g g'-4> \glissando <a-1 a'-4> \glissando <b\3 b'> \glissando

  \bar "|."
}

musicVoiceTwo = \relative {
  \voiceTwo

  \set stringNumberOrientations = #'(left)
  \set fingeringOrientations = #'(left)
  \set strokeFingerOrientations = #'(left)

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
  e4 r8 r4.

  % 17

  c'32[-3-\RH #1 g'-\RH #2 e-\RH #1 g]-\RH #2 c,[ g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g]
  b,[-1 g' d g] b,[ g' d g] b,[ g' d g] \once \hideNotes r4.

  c,32[-3 g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g] c,[ g' e g]
  b,[-1 g' d g] b,[ g' d g] b,[ g' d g] \once \hideNotes r4.

  c,32[-3 g' e g] c,[ g' e g] c,[ g' e g] e,[ g' e g] e,[ g' e g] e,[ g' e g]
  f,32[-1 f'-3 a, f'] f,[ f' a, f'] f,[ f' a, f'] \once \hideNotes r4.

  g,32[-3 e'-2 c-4 e] g,[ e' c e] g,[ e' c e] g,[ d' b d] g,[ d' b d] g,[ d' b d]
  a32[ a'-3 e-2 a] a,[ a' e a] a,[ a' e a] \once \hideNotes r4.

  \bar "|."
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
