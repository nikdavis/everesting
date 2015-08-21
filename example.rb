require_relative 'lib/everest_segment.rb'

# example for Rocky Pt Road + bit of Skyline
# https://www.strava.com/segments/486293
# Distance: 3.4 mi
# Elev. Gain: 1396 feet

segment = Segment.new(1396, 3.4)
everest = EverestSegment.new(segment)

puts "Total repeats: #{everest.repeats.round(1)}"
puts "Total distance: #{everest.distance_in(:miles).round(1)} miles"
puts "Total time: #{everest.time_by_vam(25, 750).round(1)} hours (assuming VAM of 750, avg. desc. speed of 25mph)"
puts "Grade of climb: #{segment.grade.round(1)}%"