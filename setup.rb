puts 'clone blackbox'
puts `git clone https://github.com/StackExchange/blackbox.git`
puts 'clone secure stuff'
puts `git clone https://github.com/soberstadt/blackbox-test.git`
puts 'ls'
puts `ls`
Dir.chdir('blackbox') do
  puts 'install blackbox'
  puts `sudo make manual-install`
end
Dir.chdir('blackbox-test') do
  puts 'ls bin'
  puts `ls /usr/local/bin`
  puts 'decrypt files'
  puts `sudo /usr/local/bin/blackbox_postdeploy`
end

#puts 'puts setup'
