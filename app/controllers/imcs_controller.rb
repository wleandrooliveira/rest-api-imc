class ImcsController < ApplicationController
  before_action :set_imc, only: [:show, :update, :destroy]

  # POST /imcs
  def create
    @imc = Imc.new(imc_params)

    if @imc.save
      render json: @imc, status: :created, location: @imc
    else
      render json: @imc.errors, status: :unprocessable_entity
    end
  end
.destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def imc_params
      params.require(:imc).permit(:height, :weight)
    end
end
