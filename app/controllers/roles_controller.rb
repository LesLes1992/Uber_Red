class RolesController < ApplicationController
    def role
        p params
        p current_user.roles

        if params[:role] == "driver"
            current_user.remove_role :traveler
            current_user.add_role(params[:role])
            redirect_to root_path
        elsif params[:role] == "traveler"
            current_user.remove_role :driver
            current_user.add_role(params[:role])
            redirect_to root_path
        end
    end
end
