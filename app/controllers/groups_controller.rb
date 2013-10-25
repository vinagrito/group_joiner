class GroupsController < ApplicationController

  def show
    @group_id = params[:group_id]
    @group_image_url = params[:group_image_url]
    @group_description = params[:group_description]
  end
end
