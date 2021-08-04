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

def edit
	@special = Special.find(params[:id])
end

def create
	@special = Special.new(params.require(:special).permit(:day, :title, :description))
	if @special.save
		flash[:notice] = "Special was created successfully"
 		redirect_to (@special)
	else render 'new'

	end
end

def update
	@special = Special.find(params[:id])
	if @special.update(params.require(:special).permit(:day, :title, :description))
		flash[:notice] = "Special was updated successfully"
		redirect_to @special
	else
		render 'edit'
	end
end

end