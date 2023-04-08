class SetupsController < ApplicationController

    def show
      @setup = Setup.find(params[:id])
    end

    def index
      @setups = Setup.all
    end

    def new

    end

    def create
      @setup = Setup.new(params.require(:setup).permit(:car, :driver, :track))
      @setup.save
      redirect_to @setup
    end

end
