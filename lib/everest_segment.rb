require_relative './segment.rb'

class EverestSegment

  attr_reader :segment

  def initialize(segment)
    @segment = segment
  end

  def distance_in(sym)
    repeats * segment.distance_in(sym) * 2 # Converting climb-only distance to overall climb/desc distance
  end

  def repeats
    everest_in_feet / @segment.elevation_gain_in_feet
  end

  def everest_in_feet
    29029.0
  end

  def time_by_vam(desc_speed_mph, vam)
    desc_speed_mph = Float desc_speed_mph
    vam = Float vam
    fph = vam * 3.28084
    desc_distance = (distance_in :miles) / 2.0
    asc_time = everest_in_feet / fph
    desc_time = desc_distance / desc_speed_mph
    asc_time + desc_time
  end
end