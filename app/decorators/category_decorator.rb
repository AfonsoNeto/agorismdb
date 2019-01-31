class CategoryDecorator < Draper::Decorator
  delegate_all

  def link_to_header
    h.link_to self.name, h.search_resources_path(search_resource_query: self.name), class: 'badge badge-pill badge-dark', remote: true
  end

end
