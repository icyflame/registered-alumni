class AlumniController < ApplicationController
	def index
		@all = Alumni.all
	end

	def create

		if coordinator_signed_in?

			@alumni = Alumni.new(alumni_params)

			if @alumni.save
				render plain: "The Alumni was saved."
			else
				render plain: "The Alumni could not be saved."
			end
		end
	end

	def new
		if not coordinator_signed_in?
			render plain: "You don't have privileges."
		end
	end

	def destroy
		if coordinator_signed_in?
			@alumni = Alumni.find(params[:id])
			if @alumni.destroy
				render plain: "Alumni was deleted"
			else
				render plain: "Alumni could not be deleted."
			end
		end
	end

	private
	def alumni_params
		params.require(:alumni).permit(:name, :hall, :dept, :year)
	end

end
