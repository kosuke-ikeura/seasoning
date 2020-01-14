class FlavorsController < ApplicationController
   def index
      @flavors = Flavor.all.order(id: "ASC").page(params[:page]).per(10)
      @flavor = Flavor.new
   end
   def new
      @flavor = Flavor.new
   end
   def create
      @flavor = Flavor.create(flavor_params)
      redirect_to flavors_path
   end
   def edit
      @flavor = Flavor.find(params[:id])
   end
   def update
      @flavor = Flavor.find(params[:id])
      @flavor.update(flavor_params)
      @flavors = Flavor.all.order(id: "ASC").page(params[:page]).per(10)
   end
   
   private
   def flavor_params
      params.require(:flavor).permit(:name, :price, :status)
   end
end
