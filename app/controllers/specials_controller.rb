class SpecialsController < ApplicationController

def show
	@special = Special.find(params[:id])
end

end