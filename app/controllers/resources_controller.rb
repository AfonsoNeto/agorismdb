class ResourcesController < ApplicationController
  before_action :set_categories, only: :index

  def index
    @resources = Resource.eager_load(:categories).order(random).decorate
  end

  def search
    @resources = Resource.search(params[:search_resource_query])
    @resources = ResourceDecorator.decorate_collection(@resources)
  end

  def show
    @resource = Resource.find_by(id: params[:id]).try(:decorate)

    respond_to do |format|
      format.js
    end
  end
end
