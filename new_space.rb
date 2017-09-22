require "pry"
class Bicycle

  attr_reader :tire

    def initialize(tire, gears, style)
      @tire = tire
      @gears = gears
      @style = style
    end

    def tire_size
      self.tire
    end

    def self.gears
      @gears
    end

end

mongoose = Bicycle.new(4, 10, "BMX")
