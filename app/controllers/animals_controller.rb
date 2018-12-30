class AnimalsController < ApplicationController
  skip_before_action :authorized

  def index
    render json: Animal.all
  end

  def show
    render json: Animal.find(params[:id])
  end

  def create
    render json: Animal.create(animals_params)
  end

  def update
    Animal.find(params[:id]).update(animals_params)
    render json: Animal.find(params[:id])
  end

  def destroy
    render json: Animal.find(params[:id]).destroy
  end



private

  def animals_params
    params.require(:animal).permit(:name, :age, :species, :breed, :gender, :about, :adoptionFee, :image, :health, :preferredHome)
  end

end
