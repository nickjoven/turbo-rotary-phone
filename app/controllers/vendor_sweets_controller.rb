class VendorSweetsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActiveRecord::RecordInvalid, with: :render_422

    def create
        vendor_sweet = VendorSweet.create!(vendor_sweet_params) # exception fires render_422
        render json: vendor_sweet, status: 201
    end

    def destroy
        vendor = VendorSweet.find_by!(id: params[:id]) #exception fires render_404
        vendor.destroy
        head :no_content #empty body with status 204
    end

    ### PRIVATE ###

    private

    def vendor_sweet_params
        params.permit(:price, :vendor_id, :sweet_id)
    end

    def render_404
        render json: { error: "VendorSweet not found" }, status: 404 
    end

    def render_422(exception)
        render json: { errors: exception.record.errors.full_messages }, status: 422
    end
end
