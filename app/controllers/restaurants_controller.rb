class RestaurantsController < ApplicationController
  before_action :get_user

  def index
    @restaurants = Restaurant.all
    @user = User.find(session[:user_id].last)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @user = User.new
    @sandwich = Sandwich.new
  end
  # def new
  #   @sandwich = Sandwich.new
  #   # res = Restaurant.find(params[:id])
  #   # @restaurant_ingredients = res.ingredients
  # end

  def new
    if flash[:data]
      @sandwich = Sandwich.new(flash[:data])
    else 
      @sandwich = Sandwich.new
    end
  end

  # def select_ingredients
    # byebug
    #
    # @restaurant_ingredients = Restaurant.find(params[:id]).ingredients
    # byebug
    # @restaurant_ingredients = res.ingredients
    # @ingredients = Ingredient.all

  # end

  def create_sandwich
    @user = User.find(session[:user_id].last)
    # @user.map do |id|
    #   User.find(id)
    # end
    # byebug
    @sandwich = Sandwich.new({name: params[:name], user_id: @user.id, ingredient_ids: params[:ingredient][:ingredient_ids]})
    if @sandwich.save
      redirect_to sandwich_path(@sandwich)
    else
      flash[:errors] = @sandwich.errors.full_messages
      redirect_to restaurants_path
    end
  end

  def edit
    #code
  end

  def update
    #code
  end

  def delete
    #code
  end


end
