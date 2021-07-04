class ImcsController < ApplicationController
  before_action :set_imc, only: [:show, :update, :destroy]

  # POST /imcs
  def create
    @weight = Float(imc_params[:weight])
    @height = Float(imc_params[:height])

    @imc = Imc.new(@height,@weight)
    @result = Result.new(@imc)
    @result.result

    render json: @result
  end

  private
    # Only allow a list of trusted parameters through.
    def imc_params
      params.require(:imc).permit(:height, :weight)
    end
end
