require_relative 'distance_calc/version'

# Main declaration
module DistanceCalc
  RAD_PER_DEG = Math::PI / 180
  RM = 6_371_000

  def self.calc(point1, point2)
    lat1_rad = point1[:lat] * RAD_PER_DEG
    lat2_rad = point2[:lat] * RAD_PER_DEG
    lon1_rad = point1[:long] * RAD_PER_DEG
    lon2_rad = point2[:long] * RAD_PER_DEG

    a = Math.sin((lat2_rad - lat1_rad) / 2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin((lon2_rad - lon1_rad) / 2)**2
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

    (RM * c).round
  end
end
