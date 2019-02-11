class ResourcesController < ApplicationController
  before_action :set_categories, only: :index

  def index
    @resources = Resource.eager_load(:categories).order(random).decorate
  end

  def search
    @resources = filtered_resources_by_search_type
    @resources = ResourceDecorator.decorate_collection(@resources)
  end

  def show
    @resource = Resource.find_by(id: params[:id]).try(:decorate)

    respond_to do |format|
      format.js
    end
  end

  private
    def filtered_resources_by_search_type
      category_search = params[:search_resource_query_by_category]

      if category_search.present?
        Resource.search_by_category category_search

      else
        Resource.search(params[:search_resource_query])
      end
    end
end
