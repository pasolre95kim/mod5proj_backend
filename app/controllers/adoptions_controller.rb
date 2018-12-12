class AdoptionsController < ApplicationController

  def index
    render json: Adoption.all
  end

  def show
    render json: Adoption.find(params[:id])
  end

  def create
    render json: Adoption.create(adoptions_params)
  end

  def update
    Adoption.find(params[:id]).update(adoptions_params)
    render json: Adoption.find(params[:id])
  end


private

  def adoptions_params
    params.require(:adoption).permit(:user_id, :animal_id)
  end

end
