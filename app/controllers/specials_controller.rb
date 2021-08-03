class SpecialsController < ApplicationController

def show
	@special = Special.find(params[:id])
end

def index
	@specials = Special.all
end

end