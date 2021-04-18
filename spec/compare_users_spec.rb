require 'rails_helper'

RSpec.describe 'Compare users', type: :system do
  describe 'compare users' do
    it 'shows the right content' do
      visit root_path
      click_button 'Compare Repos'
      text = page.driver.browser.switch_to.alert.text
      expect(text).to eq 'You need select 2 Repos to compare'
    end
  end
end
