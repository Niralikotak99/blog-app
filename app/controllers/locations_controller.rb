class LocationsController < ApplicationController
	def index
		@locations = Location.all
		# binding.pry
	end
	def show
    @location = Location.find_by(location: params[:location])

    if @location
       render @location.location
    end
	end
end
