class Api::V1::MonstersController < ApplicationController
  def index
    monsters = Monster.all
    render json: monsters
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  
    # Only allow a trusted parameter "white list" through.
    def monster_params
      params.require(:monster).permit(:name, :health)
    end
    
end
