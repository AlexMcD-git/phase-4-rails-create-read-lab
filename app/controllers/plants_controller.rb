class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants, status: :ok
    end
    
    def show
        render json: Plant.find(params[:id]), status: :ok
    end

    def create
        thing = Plant.create(plant_params)
        render json: thing, status: :created
    end

    private
    def plant_params
        params.permit(:name, :image, :price)
    end
end
