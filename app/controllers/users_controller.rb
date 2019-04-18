class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.find(session[:user_id].last)
  end

  def new
    if flash[:data]
      @user = User.new(flash[:data])
    else 
      @user = User.new
    end
  end

  def show
    @user = User.find(session[:user_id].last)
    # @sand_ingred = SandwichIngredient.new
  end

#   def welcome
#     if flash[:data]
#       @user = User.new(flash[:data])
#     else 
#       @user = User.new
#     end
#   end

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
    # byebug
    @user = User.find(session[:user_id].last)
    # @sand_ingred = SandwichIngredient.new
  end

  # def welcome
  #   @user = User.new
  # end

  # def create
  #   @user = User.create(user_params)
  #   redirect_to user_path(@user)
  #   #code
  # end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to restaurants_path
    else
      # render :new
      flash[:errors] = @user.errors.full_messages
      flash[:data] = @
      redirect_to restaurants_path
    end
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
