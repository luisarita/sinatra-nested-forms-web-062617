class Pirate
    attr_accessor :ships, :name, :weight, :height

    def initialize(name, weight, height, ships)
        @name, @weight, @height, @ships = name, weight, height, ships
    end
end