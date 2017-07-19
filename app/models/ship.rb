class Ship
    attr_accessor :name, :type, :booty
    @@ships = []

    def self.clear
        @@ships = []
    end

    def initialize(name, type, booty)
        @name, @type, @booty = name, type, booty
    end
end