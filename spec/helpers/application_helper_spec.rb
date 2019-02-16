require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe 'random_search_phrase' do
    it { expect(helper.random_search_phrase).to be_an_instance_of(String) }
  end
end