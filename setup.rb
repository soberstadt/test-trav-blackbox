puts 'clone blackbox'
puts `git clone https://github.com/StackExchange/blackbox.git`
puts 'clone secure stuff'
puts `git clone https://github.com/soberstadt/blackbox-test.git`
puts 'ls'
puts `ls`
#Dir.chdir('blackbox') do
  #puts 'install blackbox'
  #puts `sudo make manual-install`
#end
Dir.chdir('.') do
  puts 'adding keys'
  puts `whoami`
  puts `sudo whoami`
  puts `mkdir -m 0700 -p $HOME/.gnupg`
  `cd $HOME/.gnupg && tar xpvf $TRAVIS_BUILD_DIR/keys.tar`
  puts `ls $HOME/.gnupg`
end
Dir.chdir('blackbox-test') do
  puts 'decrypt files'
  puts `gpg --import $HOME/.gnupg/pubring.gpg`
  puts `../blackbox/bin/blackbox_postdeploy`
end

#puts 'puts setup'
