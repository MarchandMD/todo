require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'exists' do
    item = Item.create!(description: 'the first item', status: 1)

    expect(item).to be_an Item
  end
end
