describe 'Items#new' do
  it 'creates a new item' do
    @items = Item.all
    expect(@items.count).to eq(0)

    visit "/"
    expect(page).to have_content('add item')
    click_on('add item')
    expect(current_path).to eq(new_items_path)
    expect(page).to have_field('item_description')
    fill_in 'item_description', with: 'A new task to do'
    click_on('Add Item')
    expect(current_path).to eq(root_path)
    expect(page).to have_content('A new task to do')
  end
end