class ResourcesController < ApplicationController
  before_action :set_categories, only: :index
  before_action :set_all_resources, only: :index

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

    def set_all_resources
      @resources = Resource.eager_load(:categories).order(random).decorate
    end

    def filtered_resources_by_search_type
      category_search = params[:search_resource_query_by_category]
      custom_search   = params[:search_resource_query]

      if category_search or custom_search
        Resource.search(category_search || custom_search)
      else
        set_all_resources
      end
    end
end
