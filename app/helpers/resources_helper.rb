module ResourcesHelper
  def clear_search_button
    url = search_resources_path(search_resource_query: nil)
    link_to "Limpar busca", url, class: 'btn btn-default btn-sm mb-5', remote: true
  end
end
