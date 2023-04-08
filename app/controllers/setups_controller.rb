class SetupsController < ApplicationController

    def show
      @setup = Setup.find(params[:id])
    end

    def index
      @setups = Setup.all
    end

end
