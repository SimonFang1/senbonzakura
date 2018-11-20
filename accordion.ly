% #1
ddc = \relative c' {
  <d a>16.[ q <c g>16]
}
i_r = \relative c' {
  \grace {d16 c} 
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
    {d16 c32 d f16 d32 f g16 f32 g a c g a f'16 \tuplet 3/2 {e32 f e} d16 c d8 d,16 f}
    {g16 a32 c d c a g d16 f g a \transpose d d' {\ddc} <d, a>4}
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
  \gecggec \aecaaec
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
  \gafagfed \edcddcag \agfagfefd
}

% #9
ix_r = \relative c' {
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
