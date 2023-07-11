require 'rails_helper'

describe 'Items#index' do
  before(:each) do
    @item1 = Item.create!(description: 'first item', status: 1)
    @item2 = Item.create!(description: 'second item', status: 2)
    @item3 = Item.create!(description: 'third item', status: 0)
  end

  it 'displays an item' do
    visit "/"

    expect(page).to have_content('first item')
  end

  it 'has a button to add an item' do
    visit "/"
    expect(page).to have_link('add item')
    click_link('add item')
    expect(current_path).to eq('/items/new')
  end

  it 'allows a user to add an item' do
    visit "/"
    click_link('add item')
    expect(page).to have_content("Add an item")
  end
end