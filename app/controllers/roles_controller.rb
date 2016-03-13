class RolesController < ApplicationController

	def index
		@roles=Role.All
	end

	def create
		@role=Role.create(role_params)
		@role.save
		
	end

	def new
	end

private
	def role_params
		params.reqire(:role).permit(:title)
	end
end
