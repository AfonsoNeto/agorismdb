class ResourcesController < ApplicationController
  def index
    @resources  = Resource.eager_load(:categories).order(random)
    @categories = Category.joins(:resources).order(random).uniq
  end

  def show
    @resource = Resource.find_by(id: params[:id])&.decorate

    respond_to do |format|
      format.js
    end
  end

  private

    def random; Arel.sql('RANDOM()'); end
end
