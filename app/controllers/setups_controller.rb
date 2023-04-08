class SetupsController < ApplicationController

    def show
      @setup = Setup.find(params[:id])
    end

end
