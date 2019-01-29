class ResourcesController < ApplicationController
  before_action :set_categories, only: :index

  def index
    @resources  = Resource.eager_load(:categories).order(random)
  end

  def show
    @resource = Resource.find_by(id: params[:id]).try(:decorate)

    respond_to do |format|
      format.js
    end
  end
end
