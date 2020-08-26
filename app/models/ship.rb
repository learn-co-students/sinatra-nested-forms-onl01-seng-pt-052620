class Ship
    attr_accessor :name, :type, :booty

    SHIPS = []

    def self.all
        SHIPS
    end

    def self.clear
        SHIPS.clear
    end

    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @booty = args[:booty]
        
        SHIPS << self
    end
end