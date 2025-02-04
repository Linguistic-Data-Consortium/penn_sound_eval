#!/usr/bin/env ruby
=begin

check for final hallucinations in whisper output

    check_for_final_hallucinations.rb *.wav *.txt

The arguments can be given in any order.  If matching wav and txt files are found,
the wav file is used to determine the length of the file.  That length is then used
to see if hallucinations occur past that point in the txt files.

=end

require_relative '../lib/models'

raise "bad args" if ARGV.length != 2
durations = {}
File.readlines(ARGV.pop).each do |line|
  k, v = line.split
  durations[k] = v.to_f
end

Sample.new.init_from_arg.print after_time_with_map: durations
