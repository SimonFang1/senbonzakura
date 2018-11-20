\version "2.18.2"

\header {
  title = "Senbonzakura"
}

%%%%%%%%%%%% grace on beat and no compression %%%%%%%%%%%% 
#(define ac:defaultGraceBackwardness 0) % default 1, meaning it goes back in time 
#(define ac:defaultGraceFactor 1) % compression factor 

\include "articulate.ly" 
\include "accordion.ly"
% accordion_r is defined in accordion.ly


music = \new GrandStaff <<
  \new Staff {
    \set Staff.midiInstrument = # "accordion"
    \clef treble
    \accordion_r
  }
>>

\score {
  \music
  \layout{}
}

\score {
  \articulate 
  \unfoldRepeats
  \music
  \midi{
    % \tempo 4=72
  }
}
