describe 'PastItems#index' do
  describe 'arrival at the page' do
    it 'is accessed via a link from the root_path/home page' do
      visit "/"
      expect(page).to have_link('past items')
      click_link('past items')
      expect(current_path).to eq(past_items_path)
    end
  end
end