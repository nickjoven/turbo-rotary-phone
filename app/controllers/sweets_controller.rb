class SweetsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_404

    def index
        sweets = Sweet.all
        render json: sweets
    end

    def show
        sweet = Sweet.find_by!(id: params[:id]) #exception fires render_404
        render json: sweet
    end

    ### PRIVATE ###

    private

    def render_404
        render json: { error: "Vendor not found" }, status: 404 
    end

end
