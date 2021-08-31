class FishController < ApplicationController

    def index
        if params[:fish]
            @fish = Fish.where('fish LIKE ?', "%#{params[:fish]}%")
        else
         @fishes = Fish.all
        end
    end

    def show
        @fish = Fish.find(params[:id])
    end

    def new
        @fish = Fish.new
    end

    def create
        @fish = Fish.create(params.require(:fish).permit(:kind,:quantity,:alive,:aquarium_id,:id))
        redirect_to fish_path(@fish)
    end

    def edit
        @fish = Fish.find(params[:id])
    end

    def update
        @fish = Fish.find(params[:id])
        @fish.update(fish_params)
        redirect_to fish_path
    end

    def destroy
    end

    def name
    "#{@fish.kind}"
    end

    def alive 
    "#{@fish.alive}"
    end 

    private

    def fish_params
        params.require(:fish).permit(:kind, :quantity, :alive, :aquarium_id)
    end


end
