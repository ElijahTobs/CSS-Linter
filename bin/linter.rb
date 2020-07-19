require 'rainbow/refinement'
using Rainbow
# require_relative 'errors_checker.rb'

puts '----------------------------'.green.bright
puts '|                          |'.green.bright
puts '|'.green.bright + '  Welcome to CSS Linter! '.yellow.bright + ' |'.green.bright
puts '|                          |'.green.bright
puts '----------------------------'.green.bright
sleep(1)
puts
puts 'Scanning to detect possible errors...'.cyan
sleep(3)

file_path = ARGV
user_file = File.open(file_path)
file_data = user_file.readlines
checks = ErrorsChecker.new(file_data)
checks.inspect


puts 'Scan Complete!'.green.hide
