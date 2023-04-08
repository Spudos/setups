class SetupsController < ApplicationController

    def show
      @setup = Setup.find(params[:id])
    end

    def index
      @setups = Setup.all
    end

    def new
        @setup = Setup.new
    end

    def edit
      @setup = Setup.find(params[:id])
    end

    def create
      @setup = Setup.new(params.require(:setup).permit(:car, :driver, :track))
      if @setup.save
        flash[:notice] = "Setup was created successfully."
        redirect_to @setup 
      else
        render(:new, status: :unprocessable_entity) 
      end    
    end

    def update
        @setup = Setup.find(params[:id])
        if @setup.update(params.require(:setup).permit(:car, :driver, :track))
          flash[:notice] = "Setup was edited successfully."
          redirect_to @setup 
        else
          render(:edit, status: :unprocessable_entity)
        end
    end

end
