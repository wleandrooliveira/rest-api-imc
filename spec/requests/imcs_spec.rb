require 'swagger_helper'

RSpec.describe 'imcs', type: :request do

  path '/imcs' do

    post 'Creates a pet' do
      tags 'Imcs'
      consumes 'application/json', 'application/xml'
      parameter name: :imc, in: :body, schema: {
        type: :object,
        properties: {
          height: { type: :float },
          weight: { type: :float }
        },
        required: [ 'height', 'weight' ]
      }

      response '201', 'imc calculado' do
        let(:imc) { { imc: 48.44, classification: 'Paciente Obeso', obesity: "Obesidade grau III(mórbida)"} }
        run_test!
      end
    end
  end
end
