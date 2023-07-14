describe 'Items#new' do
  context 'happy path' do
    it 'creates a new item' do
      @items = Item.all
      expect(@items.count).to eq(0)

      visit "/"
      expect(page).to have_content('add item')
      click_on('add item')
      expect(current_path).to eq(new_item_path)
      expect(page).to have_field('item_description')
      fill_in 'item_description', with: 'A new task to do'
      click_on('Add Item')
      expect(current_path).to eq(root_path)
      expect(page).to have_content('A new task to do')
    end
  end

  context 'sad path' do
    it 'renders the same view when description is blank' do
      @items = Item.all
      expect(@items.count).to eq(0)

      visit "/"
      click_on('add item')
      click_on('Add Item')
      expect(page).to have_content('Description can\'t be blank')
    end
  end
end
