describe 'Items#index' do
  before(:each) do
    @item1 = Item.create!(description: 'first item', status: 1)
    @item2 = Item.create!(description: 'second item', status: 2)
    @item3 = Item.create!(description: 'third item', status: 0)
    @item4 = create(:item, description: 'searched for item')
    visit "/"
  end

  describe 'the index page' do
    it 'displays an item' do
      expect(page).to have_content('first item')
    end

    it 'has a button to add an item that goes to /items/new' do
      expect(page).to have_link('add item')
      click_link('add item')
      expect(current_path).to eq('/items/new')
    end

    it 'has a link to delete an item' do
      expect(page).to have_content(@item1.description)
      first(:link, 'delete').click
      expect(current_path).to eq("/")
      expect(page).not_to have_content(@item1.description)
    end

    it 'has a link to update an item' do
      expect(page).to have_content('update')
    end

    it 'has a link to view past items' do
      expect(page).to have_link('Past Items')
    end
  end

  describe 'search functionality' do
    it 'has a search form' do
      expect(page).to have_field('search')
      fill_in 'search', with: 'searched for item'
      click_on 'Search'
      expect(page).to have_content('searched for item')
      expect(page).not_to have_content(@item1.description)
    end

    it 'can clear the results and display original list' do
      expect(page).to have_link('clear')
      click_link('clear')
      expect(current_path).to eq(root_path)

      @items = Item.all
      @items.each do |item|
        expect(page).to have_content(item.description)
      end
    end
  end
end
