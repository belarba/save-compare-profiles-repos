require 'rails_helper'

RSpec.describe 'Compare repos', type: :system do
  describe 'compare repos' do
    it 'shows the right content' do
      visit root_path
      click_button 'Compare Users'
      text = page.driver.browser.switch_to.alert.text
      expect(text).to eq 'You need select 2 Users to compare'
    end
  end
end
