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

  def coffee_analysis
    @selected_date = 1.day.ago

    @brewing_coffee_count = Coffee.where(:created_at => @selected_date.beginning_of_day..@selected_date.end_of_day,
                                         :status => "brewing").count
    
    render json: @brewing_coffee_count
  end

  private
    def coffee_params
      params.permit(:status)
    end
end
