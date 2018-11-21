% #1
ddc = \relative c' {
  <d a>16.[ q <c g>16]
}
i_r = \relative c' {
  % \grace {d16 c}
  \repeat unfold 3 {\ddc}
  <d a>8 <f c>
  \repeat unfold 2 {\ddc}
  <d a>8 <f c> <g d> <a e>
}

% #2
gadcdc = \relative c''' {
  g16 a d,32 c d c
}
ii_r = \relative c'' {
  \repeat volta 2 {
    \repeat unfold 3 {\gadcdc}
    f16 \tuplet 3/2 {e32 f e} d16 c \noBreak
    \repeat unfold 2 {\gadcdc}
    g'16 a c f e32 f e d c16 a
    \repeat unfold 3 {\gadcdc}
    f16 \tuplet 3/2 {e32 f e} d16 c \noBreak
  }
  \alternative {
    {
      d16 c32 d f16 d32 f g16 f32 g a c g a f'16 \tuplet 3/2 {e32 f e} d16 c d8 d,16 f
    }
    {
      g16 a32 c d c a g d16 f g a \transpose d d' {\ddc} <d, a>4
    }
  }
}

% #3
dffg = \relative c' {
  d8 d16. c32 d16 f f g
}
dcac = \relative c' {
  d8 d16. c32 d16 c a c
}
agfd = \relative c'' {
  a8 \tuplet 3/2 {g16 a g} f8 d
}
iii_r = {
  \repeat unfold 2 {
    \dffg \dcac
    \dffg \agfd
  }
}

% #4
fedc = \relative c'' {
  f8 e d c c16 c32 d a16 g 
}
acd = \relative c'' {
  a16 c d8 g e f e16 c d4
}
iv_r = \relative c'' {
  \fedc a4
  \acd
  \fedc a8 a16 c
  <d bes> <d bes>8 <d bes>16 <f c>8 <g c,>
  <e c a>4 <e cis a>8 d16 f
}

% #5
ggaa = \relative c''' {
  <g bes,>16. <g bes,> <a c,>16 <a c,>8. <a c,>16
}
cdgfa = \relative c''' {
  c16 d g, f a8 d,16 f
}
bagff = \relative c''' {
  bes16 a g f f8 d16 f
}
bagf = \relative c''' {
  <bes d,>8 <a d,> <g c,> <f c>
}
gaecd = \relative c''' {
  g16 a e c d8 d16 f
}
gfacd = \relative c''' {
  g16 f a c <d a f d>4
}
v_r =  {
  \ggaa \cdgfa
  \ggaa \bagff
  \ggaa \cdgfa
  \bagf \gaecd
  \ggaa \cdgfa
  \ggaa \bagff
  \ggaa \cdgfa
  \bagf \gfacd
}

% #6
dddddddca = \relative c''' {
  d16 d d d d d d32 c a16
}
gagacdf = \relative c'' {
  g16 a32 g a c d f 
  a c d f e16 d,32 f
}
vi_r = {
  \dddddddca
  \transpose d' g {\dddddddca}
  \transpose d' d {\dddddddca}
  \gagacdf
}

% #7
afdaafd = \relative c''' {
  a32 f d a'16 a32 f d
}
bgebbge = \relative c''' {
  bes32 g eis bes'16 bes32 g eis
}
bfdbbfd = \relative c''' {
  bes32 f d bes'16 bes32 f d
}
gecggec = \relative c''' {
  g32 e c g'16 g32 e c
}
aecaaec = \relative c''' {
  a32 e c a'16 a32 e c
}
vii_r = {
  \afdaafd \afdaafd
  \bgebbge \bgebbge
  \bfdbbfd \bfdbbfd
  \gecggec \aecaaec \noBreak
}

% #8
afdadafd = \relative c''' {
  a32 f d a' d a f d
}
gfdafdaf = \relative c''' {
  g32 f d a' f' d a f
}
bfdbfdaf = \relative c''' {
  bes32 f d bes' d bes f d
}
bfdbfedb = \relative c''' {
  bes32 f d bes' f' e d bes
}
dbfbfbdf = \relative c''' {
  d32 bes f bes f' bes, d f
}
bfdbbfdb = \relative c''' {
  \repeat unfold 2 {bes32 f d bes}
}
ccegc = \relative c'' {
c8 c,32 e g c 
}
gafagfed = \relative c''' {
  g32 a f a g f e d
}
edcddcag = \relative c'' {
  e32 d c d d c a g
}
agfagfefd = \relative c'' {
  a32 g f a g f e f d4
}
viii_r = {
  \afdadafd \gfdafdaf
  \bfdbfdaf \bfdbfedb
  \dbfbfbdf \bfdbbfdb
  \ccegc \transpose c des {\ccegc}
}

% #9
ix_r = \relative c' {
  \gafagfed \edcddcag \agfagfefd
  d16 e f a g32 a d e f e d f
  <a c,>8 <c c,>16 <a c,>  <a d,>4
}

% #10
x_r = \relative c' {
  d16 c g' f a g d' c
  g' f \tuplet 3/2 {c' a c}
  <c a f c>4
}

% #11
fdbfbdf = \relative c'' {
  f16 d32 bes f bes d f 
}
xi_r = \relative c''' {
  \fdbfbdf \transpose f g {\fdbfbdf}
  a16. gis  a32 gis a4
}

% #12
xii_r = \relative c''' {
  \ggaa \cdgfa
  \ggaa \bagff
  \ggaa \cdgfa
  \bagf g16 a g a a8 e16 g
}


accordion_r = {
  \key d \minor
  \time 4/4

  % preclude
  \i_r

  % paragraph 1
  \ii_r
  \iii_r
  \iv_r
  \v_r

  % paragraph 2
  \vi_r
  \vii_r
  \viii_r
  \ix_r
  \x_r
  \xi_r

  % paragraph 3
  \iv_r
  \xii_r
  \key e \minor
  \transpose d e {\v_r}

  % paragraph 4
  \transpose d e {
    \ii_r
    \transpose d d' {{\ddc}}    
  }
  \relative c'' {
    <e b> 4
  }
  r2
  \bar "|."
}


bassC = c
bassD = d
bassE = e,
bassF = f,
bassG = g,
bassA = a,
bassB = b,

CM = <e g c'>16
DM = <fis a d'>
Dm = <f a d'>16
EM = <e gis b>
Ev = <g des >
Ev = <e gis d'>
FM = <f a c'>
Fv = <a e' f'>
Gm = <g bes d'>
Am = <e a c'>
BM = <dis f b>16
BesM = <d f bes>16

Dd = <d f a d'>8
BesB = <bes, d f bes>8
CC = <c e g c'>8

% #1
ddc_bs = {
  d16 d8 c16
}
i_l = {
  % \grace {s8}
  \repeat unfold 3 {\ddc_bs} d8 f
  \repeat unfold 2 {\ddc_bs} d8 f g a
}

% #2
BBFBCCGC = {
  bes,16 \BesM f, \BesM c \CM g, \CM
}
DDAD = {
  d \Dm a, \Dm
}
ii_l = {
  \repeat volta 2 {
    \repeat unfold 3 {
      \BBFBCCGC \DDAD \DDAD
    }
  }
  \alternative {
    {\BBFBCCGC \DDAD \DDAD}
    {\BBFBCCGC \ddc_bs d4}
  }
}

% #3
iii_l = {
  \repeat unfold 4 {
    \DDAD \DDAD \BBFBCCGC
  }
}

% #4
BBBB = {
  bes,16 \BesM \BesM \BesM
}
FFFF = {
  f,16 \FM \FM \FM
}
CCCC = {
  c16 \CM \CM \CM
}
DDDD = {
  d16 \Dm \Dm \Dm
}
iv_l = {
  \BBBB \BBBB \FFFF \FFFF
  \BBBB \CCCC \DDDD \DDDD
  \BBBB \BBBB \FFFF \FFFF
  <bes, d f bes>8. q16
  <c e g c'>8 q
  <a, e a c'>4
  <a, e a cis'>8 r
}

% #5
FFCF = {
  f,16 \FM c \FM
}
BBCC = {
  bes,16 \BesM c \CM
}
v_l = {
  \repeat unfold 3 {
    \DDAD \BBFBCCGC \FFCF
  }
  \BBFBCCGC \BBCC
  <d f a d'>8 r
  \repeat unfold 3 {
    \DDAD \BBFBCCGC \FFCF
  }
  \BBFBCCGC \BBCC
  <d f a d'>4
}

% #6
vi_l = {
  % \Dd[ r8 \BesB] r
  % \CC[ r \Dd] r
  <d f a d'>8 [r <bes, d f bes>] r
  <c e g c'> [r <d f a d'>] r
  <d f a d'> [r <bes, d f bes>] r
  <c e g c'> [r <a, c e a>] r

}

% #7
vii_l = {
  <d f a d'> q q q
  <f, g bes d'> q q q
  <bes, d f bes> q q q
  <c e g c'> q <a, c e a> q
}

% #8

viii_l = {
  d8 <f a d'> g, <g bes d'>
  bes, <d g bes> g, <g bes d'>
  g, <g bes d'> bes, <d g bes>
  c <e g c'> a, <cis e a>

}

% #9
ix_l = {
  \BBBB \CCCC \DDDD \DDDD
  \BBBB \CCCC \DDDD \DDDD
}

% #10
x_l = {
  <bes, d f bes>4
  <c e g c'>
  <d f a d'>2
}

% #11
xi_l = {
  \BBFBCCGC
  a,16. <c e a> q16 <a, c e a>4
}

% #12
xii_l = {
  \repeat unfold 3 {
    <d f a d'>8. q16
    <bes, d f bes>8. q16
    <c e g c'>8 q
    <f, a c f> r
  }
  <bes, d f bes>8 q
  <c e g c'> q
  <bes, d f bes> <c e g c'>
  <a, c e a> r
}

% #13
xiii_l = {
  % modify ii2
  \transpose d e {
    \repeat volta 2 {
      \repeat unfold 3 {
        \BBFBCCGC \DDAD \DDAD
      }
    }
    \alternative {
      {\BBFBCCGC \DDAD \DDAD}
      {\BBFBCCGC \ddc_bs d8 c16 des}
    }
  }
  \transpose d e {\ddc_bs}
  <e b,>4 r2
}

accordion_l = {
  \key d \minor
  \time 4/4

  % preclude
  \i_l

  % parahgraph 1
  \ii_l
  \iii_l
  \iv_l
  \v_l

  % paragraph 2
  \vi_l
  \vii_l
  \viii_l
  \ix_l
  \x_l
  \xi_l

  % paragraph 3
  \iv_l
  \xii_l
  \key e \minor
  \transpose d e {\v_l}

  % paragraph 4
  \xiii_l

}
