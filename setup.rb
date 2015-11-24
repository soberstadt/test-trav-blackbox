puts `git clone https://github.com/StackExchange/blackbox.git`
puts `ls`
Dir.chdir('blackbox') do
  puts `sudo make manual-install`
end
#puts 'puts setup'
