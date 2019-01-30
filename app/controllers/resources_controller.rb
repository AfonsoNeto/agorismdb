class ResourcesController < ApplicationController
  before_action :set_categories, only: :index

  def index
    @resources  = Resource.eager_load(:categories).order(random)
  end

  def search
    @resources = Resource.joins(:categories).where(%{
      resources.name         ILIKE :query OR
      resources.description  ILIKE :query OR
      categories.name        ILIKE :query OR
      categories.description ILIKE :query
    }, query: "%#{params[:search_resource_query]}%").distinct
  end

  def show
    @resource = Resource.find_by(id: params[:id]).try(:decorate)

    respond_to do |format|
      format.js
    end
  end
end
