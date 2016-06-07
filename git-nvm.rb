#!/usr/bin/env ruby

ref = `git symbolic-ref -q HEAD`.split('/').last

puts "Are you sure you want to discard all changes? (y/n)"
sure = gets.chomp

if sure.downcase == 'y'
  result = system "git reset --hard origin/#{ref}"
end

exit result
