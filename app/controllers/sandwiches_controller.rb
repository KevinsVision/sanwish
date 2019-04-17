class SandwichesController < ApplicationController

    def index
      # byebug
      @sandwiches = Sandwich.all
    end

    def show
      @sandwich = Sandwich.find(params[:id])
    end

    def new
      @sandwich = Sandwich.new
      #code
    end

    def create
      @sandwich = Sandwich.create(sandwich_params)
      redirect_to sandwich_path(@sandwich)
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

    def sandwich_params
      params.require(:sandwich).permit(:name, :user_id)
      #code
    end


end
