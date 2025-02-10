#!/usr/bin/env ruby


ARGV.each do |fn|
  a = `grep Sum #{fn}`.split
  wer = a[-3]
  ins = a[-4]
  del = a[-5]
  sb = a[-6]
  puts "#{wer} s=#{sb} i=#{ins} d=#{del} #{fn}"
end

exit

# for rsum output

ARGV.each do |fn|
  a = `grep Mean #{fn}`.split
  wer = (a[-3].to_f / a[4].to_f * 100).round 2
  puts "#{wer} #{fn}"
end

