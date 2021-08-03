class SpecialsController < ApplicationController

def show
	@special = Special.find(params[:id])
end

def index
	@specials = Special.all
end

def new
	@special = Special.new
end

def create
	@special = Special.new(params.require(:special).permit(:day, :title, :description))
	if @special.save
		flash[:notice] = "Special was created successfully"
 		redirect_to (@special)
	else render 'new'

	end
end

end