class Api::V1::PetsController < ApplicationController

  # GET /pets
  def index
    pets = Pet.all
    render json: pets
  end

  # GET /pets/1
  def show
    pet = Pet.find_by_id(params[:id])
    render json: pet
  end

  # POST /pets
  def create
    # byebug
    pet = Pet.new(pet_params)
    if pet.save
      render json: pet
    else
      render json: pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    # byebug
    pet = Pet.find_by_id(params[:id])
    if pet.update(pet_params)
      render json: pet
    else
      render json: pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    pet = Pet.find_by_id(params[:id])
    if pet
      pet.destroy
      render json: { status: 200 }
    else
      render json: { status: 500 }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def pet_params
    params.require(:pet).permit(:name, :health, :boredom, :hunger, :user_id, item_ids: [])
  end
end
