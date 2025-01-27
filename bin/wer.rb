#!/usr/bin/env ruby


ARGV.each do |fn|
  a = `grep Sum #{fn}`.split
  wer = a[-3]
  ins = a[-4]
  puts "#{wer} (#{ins}) #{fn}"
end

exit

# for rsum output

ARGV.each do |fn|
  a = `grep Mean #{fn}`.split
  wer = (a[-3].to_f / a[4].to_f * 100).round 2
  puts "#{wer} #{fn}"
end

