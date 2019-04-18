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
    if flash[:data]
      @user = User.new(flash[:data])
    else 
      @user = User.new
    end
  end

  def login
    # byebug
    @user = User.new(user_params)
    if @user.save
      redirect_to restaurants_path
    else
      # render :new
      flash[:errors] = @user.errors.full_messages
      flash[:data] = @
      redirect_to restaurants_path
    end
  end



  # def create
  #   @user = User.create(user_params)
  #   redirect_to user_path(@user)
  #   #code
  # end

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
