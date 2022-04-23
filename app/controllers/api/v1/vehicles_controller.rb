require 'pry'
class Api::V1::VehiclesController < ApplicationController
    before_action :find_vehicle, only: [:update, :destroy]

    def index
        @vehicles = Vehicle.all
        render json: @vehicles
    end

    def show
        @make =  Vehicle.all.select{|n| n.make.downcase == params[:id]}
        @vehicle = Vehicle.find_by(id: params[:id])
        render json: @make.empty? ? @vehicle : @make
    end

    def create
        @vehicle = Vehicle.new(vehicle_params)
        @vehicle.id = @vehicle.vehicle_id
        if @vehicle.save
            render json: @vehicle
        else  
            render error: { error: 'Unable to create Vehicle' }, status: 400
        end
    end

    def update 
        if @vehicle
            @vehicle.update(vehicle_params)
            render json: { message: 'Vehicle successfully updated' }, status: 200
        else  
            render json: { error: 'Unable to update User.' }, status: 400
        end
    end

    def destroy
        if @vehicle 
            @vehicle.destroy
            render json: { message: 'Vehicle was successfully deleted' }, status: 200
        else  
            render json: { message: 'Unable to delete Vehicle' }, status: 400
        end
    end

    def sort 
        @vechiles
    end

    private 

    def vehicle_params
        params.require(:vehicle).permit(:id, :make, :model, :range, :colors, :price, :photo)
    end

    def find_vehicle
        @vehicle = Vehicle.find_by(vehicle_id: params[:id])
    end
end
