class SandwichesController < ApplicationController

    def index
      # byebug
      @sandwiches = Sandwich.all
    end

    def show
      @sandwich = Sandwich.find(params[:id])
      @user = User.find(session[:user_id].last)
    end

    # def new
    #   @sandwich = Sandwich.new
    # end

    def new
      if flash[:data]
        @sandwich = Sandwich.new(flash[:data])
      else 
        @sandwich = Sandwich.new
      end
    end

    def create
      @sandwich = Sandwich.create(sandwich_params)
      redirect_to sandwich_path(@sandwich)
    end

    def edit
      @sandwich = Sandwich.find(params[:id])
      @ingredients = Ingredient.all
    end

    def update
      @sandwich = Sandwich.find(params[:id])
      @sandwich.update(({name: params[:sandwich][:name], ingredient_ids: params[:sandwich][:ingredient_ids]}))
      if @sandwich
        redirect_to sandwich_path(@sandwich)
      else
        render :new
      end
      #code
    end

    def delete
      #code
    end

    def sandwich_params
      params.require(:sandwich).permit(:name, :ingredient_id, :user_id)
      #code
    end

# user_id, sanwihch_name, ingredienta_id
    def destroy
      @sandwich = Sandwich.find(params[:id])
      @sandwich.destroy
      redirect_to restaurants_path
    end

end