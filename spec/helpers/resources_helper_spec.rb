require 'rails_helper'

RSpec.describe ResourcesHelper, type: :helper do
  describe ".clear_search_button" do
    let(:search_resource_url) { search_resources_path(search_resource_query: nil) }
    let(:expected_link_to_params) {
      [
        "Limpar busca",
        search_resource_url,
        {
          class: 'btn btn-default btn-sm mb-5',
          remote: true
        }
      ]
    }

    subject { helper.clear_search_button }

    it { expect(helper).to receive(:link_to).with(*expected_link_to_params); subject }
    it { expect(subject).to include('<a') }
    it { expect(subject).to include("href=\"#{search_resources_path(search_resource_query: nil)}\"") }
    it { expect(subject).to include("class=\"btn btn-default btn-sm mb-5\"") }
    it { expect(subject).to include("data-remote=\"true\"") }
    it { expect(subject).to include('/a>') }
  end
end
