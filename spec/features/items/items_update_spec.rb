describe 'Items#update' do
  before(:each) do
    create_list(:item, 5)
  end

  it 'updates an item' do
    visit "/"
    expect(page).to have_content('update')
    first(:link, 'update').click
    expect(current_path).to eq(edit_items_path)
    expect(page).to have_content('Edit item')
    expect(page).to have_content('Description')
    expect(page).to have_field('item_description')
    fill_in 'item_description', with: 'updated description'
    click_button('Save Item')
    expect(current_path).to eq(root_path)
    expect(page).to have_content('updated description')
  end
end
