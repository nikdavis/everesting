class Segment

  attr_reader :elevation_gain_in_feet, :distance_in_mi

  def initialize(elevation_gain_in_feet, distance_in_mi)
    @elevation_gain_in_feet = Float elevation_gain_in_feet # feet
    @distance_in_mi = Float distance_in_mi
  end

  def distance_in(sym)
    case sym
    when :feet
      @distance_in_mi * 5280
    when :meters
      @distance_in_mi * 1609.34
    when :miles
      @distance_in_mi
    when :km, :kilometers
      @distance_in_mi * 1.60934
    end
  end

  def grade
    elevation_gain_in_feet / distance_in(:feet) * 100
  end

end