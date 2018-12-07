class ResourcesController < ApplicationController
  def index
    @resources  = Resource.eager_load(:categories).order(random)
    @categories = Category.joins(:resources).order(random).uniq
  end

  private

    def random; Arel.sql('RANDOM()'); end
end
