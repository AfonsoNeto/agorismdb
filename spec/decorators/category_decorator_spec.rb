require 'rails_helper'

RSpec.describe CategoryDecorator do
  describe '.link_to_header' do
    let(:category)      { build(:category).decorate }
    let(:expected_href) { 'expected_href' }

    subject { category.link_to_header }

    before do
      allow(helper).to receive(:search_resources_path).with({
        search_resource_query_by_category: category.name
      }).and_return(expected_href)
    end

    it { expect(helper).to receive(:search_resources_path).with(search_resource_query_by_category: category.name); subject }

    it { expect(subject).to include('<a ') }
    it { expect(subject).to include("href=\"#{expected_href}\"") }
    it { expect(subject).to include("class=\"badge badge-pill badge-dark\"") }
    it { expect(subject).to include("data-remote=\"true\"") }
    it { expect(subject).to include('</a>') }
  end
end
