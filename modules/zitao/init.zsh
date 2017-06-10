p() { cd ~/Documents/Projects/$1; }
_p() { _files -W ~/Documents/Projects -/; }
compdef _p p

a() { cd ~/Documents/Projects/lighthousex/ace-engine/$1; }
_a() { _files -W ~/Documents/Projects/lighthousex/ace-engine -/; }
compdef _a a

# o() { cd ~/Documents/Projects/OpenSourceProjects/$1; }
# _o() { _files -W ~/Documents/Projects/OpenSourceProjects -/; }
# compdef _o o

oo() {
  `find . \( -iname "*.xcworkspace" ! -iname "project.*" \) -print0 | xargs -0 open`
  # for f in `find . \( -iname "*.xcworkspace" ! -iname "project.*" \) | cut -c3-`; do
  #   echo $f
  #   open $f
  # done
}
_oo() { 
  _files -W `pwd` -/; 
}
compdef _oo oo

function h {
  cd ~/$1;
}

function _h {
  _files -W ~ -/;
}

compdef _h h

gcam() {
  git add .; git commit -a -m "$*";
}
gcamp() {
  git add .; git commit -a -m "$*"; git push;
}
