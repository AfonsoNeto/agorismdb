class ApplicationController < ActionController::Base
  def set_categories
    @categories = Category.joins(:resources).order(random).decorate.uniq
  end

  def random; Arel.sql('RANDOM()'); end
end
