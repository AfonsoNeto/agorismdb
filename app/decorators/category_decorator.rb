class CategoryDecorator < Draper::Decorator
  delegate_all

  def link_to_header
    h.link_to self.name, '#', class: 'badge badge-pill badge-dark'
  end

end
