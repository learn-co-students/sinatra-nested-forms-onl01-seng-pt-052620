class Pirate
    attr_accessor :name, :weight, :height

    PIRATES = []

    def self.all
        PIRATES
    end

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]

        PIRATES << self
    end
end