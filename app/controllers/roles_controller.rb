class RolesController < ApplicationController

	def index
		@roles=Role.all
	end

	def create
		@role=Role.create(role_params)
		@role.save
		redirect_to roles_index_path
	end

	def new
	end

private
	def role_params
		params.require(:role).permit(:title)
	end
end
