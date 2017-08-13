p() { cd ~/Documents/Projects/$1; }
_p() { _files -W ~/Documents/Projects -/; }
compdef _p p

a() { cd ~/Documents/Projects/lighthousex/ace-engine/$1; }
_a() { _files -W ~/Documents/Projects/lighthousex/ace-engine -/; }
compdef _a a

i() { cd ~/Documents/Projects/lighthousex/$1; }
_i() { _files -W ~/Documents/Projects/lighthousex/ -/; }
compdef _i i

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

pod_bump_push() {
  podspec-bump -w
  git commit -am "bump `podspec-bump --dump-version` $*" 
  git tag "`podspec-bump --dump-version`"
  git push --tags
  git push
}

pod_repo_push_caoer() {
  pod repo push caoer --sources=https://github.com/caoer/Specs,https://github.com/Cocoapods/Specs --allow-warnings $*
}

pod_lint() {
  pod spec lint --sources=https://github.com/caoer/Specs,https://github.com/Cocoapods/Specs --private --allow-warnings $*
}

