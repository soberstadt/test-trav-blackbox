p 'clone blackbox toolchain'
p `git clone https://github.com/StackExchange/blackbox.git`
p 'clone secure stuff'
p `git clone https://github.com/soberstadt/blackbox-test.git`
p 'adding keys'
`mkdir -m 0700 -p $HOME/.gnupg`
`tar xpvf keys.tar -C $HOME/.gnupg`
Dir.chdir('blackbox-test') do
  puts 'decrypting files'
  puts `gpg --import $HOME/.gnupg/pubring.gpg`
  puts `../blackbox/bin/blackbox_postdeploy`
end

