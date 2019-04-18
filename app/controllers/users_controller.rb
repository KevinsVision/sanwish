class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.find(session[:user_id].last)
  end

  def new
    @user = User.new
    #code
  end

  def show
    # byebug
    @user = User.find(session[:user_id].last)
    # @sand_ingred = SandwichIngredient.new
  end

  # def welcome
  #   @user = User.new
  # end

  def create
    @user = User.create(user_params)
    # byebug
    session[:user_id] ||= []
    session[:user_id] << @user.id
    redirect_to restaurants_path
    #code
  end

  def edit
    #code
  end

  def update
    #code
  end

  def delete

  end

  def user_params
    params.require(:user).permit(:name, :surname, :email, :phone_number, :age)
    #code
  end

end
