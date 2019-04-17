class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    #code
  end

  def show
    @user = User.find(params[:id])
    # @sand_ingred = SandwichIngredient.new
  end

  def welcome
    @user = User.new
  end

  def login
    # byebug
    @user = User.create(user_params)
    redirect_to restaurants_path
  end


  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
    #code
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

  def user_params
    params.require(:user).permit(:name, :surname, :email, :phone_number, :age)
    #code
  end

end
