class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create #create is when you submit the form for a new record
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new # present the form for a new record
    @restaurant = Restaurant.new
  end

  def edit # presend the for an existing record
    @restaurant = Restaurant.find(params[:id])
    @restaurant.save
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def update #update is when you submit the form for an existing record
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
  end

    private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
