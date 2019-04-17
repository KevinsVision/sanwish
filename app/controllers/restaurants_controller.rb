class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @user = User.new
    @sandwich = Sandwich.new
  end
  def new
    @sandwich = Sandwich.new
    # res = Restaurant.find(params[:id])
    # @restaurant_ingredients = res.ingredients
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
    # byebug
    @user = User.find_or_create_by({name: params[:user_name]})
    @sandwich = Sandwich.new({name: params[:name], user_id: @user.id, ingredient_ids: params[:ingredient][:id]})
    if @sandwich.save
      redirect_to sandwich_path(@sandwich)
    else
      render :new
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
