class Result
    def initialize(imc)
      @imc = imc
      @classification = ""
      @obesity =""
    end
    def result
        if((@imc.imc < 18.5) || (@imc.imc== 18.5))
            @imc = @imc.imc
            @classification = 'Abaixo do Peso'
            @obesity = 'Paciente não apresenta obesidade, mas está abaixo do Peso'
          elsif((@imc.imc > 18.5) && (@imc.imc < 25))
            @imc = @imc.imc
            @classification = 'Peso Normal'
            @obesity = 'Paciente com peso Normal'
          elsif((@imc.imc > 24.9) && (@imc.imc < 30))
            @imc = @imc.imc
            @classification = 'peso em excesso'
            @obesity = 'peso em excesso'
          elsif((@imc.imc > 30) && (@imc.imc == 30))
            @imc = @imc.imc
            @classification = 'peso em excesso'
            @obesity = 'obesidade'
        end
    end
end