require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Validations' do
    it { expect(build(:category)).to be_valid }

    context 'invalid when' do
      let(:category) { build :category }

      context 'name' do
        context 'is not present' do
          before { category.name = nil }
          it { expect(category).to be_invalid }
        end

        context 'already taken' do
          let(:name) { Faker::Lorem.word }
          before do
            create :category, name: name
            category.name = name
          end

          it { expect(category).to be_invalid }
        end
      end
    end
  end
end
