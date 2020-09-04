class Pirate

    PIRATE = []

    attr_accessor :name, :weight, :height

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        PIRATE << self

    end

    def self.all
        PIRATE
    end
end