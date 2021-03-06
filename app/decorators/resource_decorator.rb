class ResourceDecorator < Draper::Decorator
  delegate_all

  def inline_categories_list
    self.categories.pluck(:name).join(', ')
  end

  def description_for_home
    self.description.truncate(200)
  end

  def link_for_exhibition
    return unless self.url
    h.link_to self.url, self.url, target: '_blank'
  end

  def color_for_exhibition
    Faker::Color.hex_color
  end

end
