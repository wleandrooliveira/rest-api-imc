class Imc
    attr_reader :imc
    def initialize(height,weight)
      @height = height
      @weight = weight
    end

    def imc
        @imc = (@weight/(@height * @height)).round(2)
    end
end