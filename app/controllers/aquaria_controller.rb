class AquariaController < ApplicationController
    def index
        @aquaria = Aquarium.all
    end

    def show
        @aquarium = Aquarium.find(params[:id])
        @fish = Fish.find(params[:id])
    end

    def new
        @aquarium = Aquarium.new 
    end

    def create
        @aquarium =Aquarium.create(params.require(:aquarium).permit(:size, :owner, :water))
        redirect_to aquarium_path(@aquarium)
    end

    def edit
        @aquarium = Aquarium.find(params[:id])
    end

    def update
        @aquarium = Aquarium.find(params[:id])
        @aquarium.update(params.require(:aquarium).permit(:size, :owner, :water))
        redirect_to aquarium_path
    end

    def destroy
        @aquarium = Aquarium.find(params[:id])
        @aquarium.destroy
        redirect_to aquaria_path
    end

end


