class CoffeeController < ApplicationController

  def index
    coffee = Coffee.all

    render json: coffee
  end

  def last
    last_coffee = Coffee.order("created_at").last

    render json: last_coffee
  end

  def create
    @coffee = Coffee.new(coffee_params)
   
    return render json: { errors: "Invalid data" }, status: 400 unless @coffee.save 
    
    render json: @coffee
  end

  private
    def coffee_params
      params.permit(:status)
    end
end
