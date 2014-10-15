class AlumniController < ApplicationController
	def index
		@all = Alumni.all
	end

	def create
		# render plain: params[:alumni].inspect

		@alumni = Alumni.new(alumni_params)

		# render plain: @alumni.inspect

		if @alumni.save
			render plain: "The Alumni was saved."
		else
			render plain: "The Alumni could not be saved."
		end
	end

	private
	def alumni_params
		params.require(:alumni).permit(:name, :hall, :dept, :year)
	end

end
