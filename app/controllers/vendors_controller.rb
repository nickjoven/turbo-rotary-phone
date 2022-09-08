class VendorsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_404

    def index
        vendors = Vendor.all
        render json: vendors
    end

    def destroy
        vendor = Vendor.find_by!(id: params[:id]) #exception fires render_404
        render json: vendor, serializer: VendorWithVendorSweetsSerializer
    end

    ### PRIVATE ###

    private

    def render_404
        render json: { error: "Vendor not found" }, status: 404 
    end
end
