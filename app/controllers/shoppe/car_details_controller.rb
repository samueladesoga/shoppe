module Shoppe
  class CarDetailsController < Shoppe::ApplicationController

    before_filter { @active_nav = :customers }  
    before_filter { params[:customer_id] && @customer = Shoppe::Customer.find(params[:customer_id])}
    before_filter { params[:id] && @car_detail = @customer.car_details.find(params[:id])}

    def new
      @car_detail = Shoppe::CarDetail.new
    end

    def edit
    end

    def create
      @car_detail = @customer.car_details.build(safe_params)
      if @customer.save
        redirect_to @customer, :flash => {:notice => "Car details has been created successfully"}
      else
        render action: "new"
      end
    end

    def update
      if @car_detail.update(safe_params)
        redirect_to @customer, :flash => {:notice => "Car Detail has been updated successfully"}
      else
        render action: "edit"
      end
    end

    def destroy
      @car_detail.destroy
      redirect_to @customer, :flash => {:notice => "Car Detail has been deleted successfully"}
    end

    private
  
    def safe_params
      params[:car_detail].permit(:make, :model, :year_of_manufacture, :mileage, :fuel)
    end

  end
end