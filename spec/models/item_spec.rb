require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create!(description: 'the first item', status: 1) }

  describe 'creation of an Item' do
    it { should validate_presence_of(:description) }

    it 'exists' do
      expect(item).to be_an Item
    end

    it 'has @description and @status' do
      expect(item.description).to eq('the first item')
      expect(item.status).to eq(1)
    end
  end
end
