describe 'PastItems#index' do
  describe 'arrival at the page' do
    it 'is accessed via a link from the root_path/home page' do
      visit "/"
      expect(page).to have_link('Past Items')
      click_link('Past Items')
      expect(current_path).to eq(past_items_path)
    end
  end
end