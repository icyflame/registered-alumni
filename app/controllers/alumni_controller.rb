class AlumniController < ApplicationController
  def index
  	@all = Alumni.all
  end
end
