class ImcsController < ApplicationController
  acts_as_token_authentication_handler_for User
 
  before_action :require_authentication!

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

    def require_authentication!
      throw(:warden, scope: :user) unless current_user.presence
    end
end
