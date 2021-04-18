require 'rails_helper'

RSpec.describe 'Add new user Page', type: :system do
  describe 'add new user page' do
    it 'shows the right content' do
      visit fetch_users_path
      expect(page).to have_content('Users') && have_content('User name:')
    end

    it 'search without enter a name' do
      visit fetch_users_path
      click_button 'Search'
      text = page.driver.browser.switch_to.alert.text
      expect(text).to eq 'Please enter a user name to find'
    end

    it 'search enter a name that has no profile on github' do
      visit fetch_users_path
      fill_in 'user_name', :with => '??????????'
      click_button 'Search'
      expect(page).to have_content('User not found')
    end

    it 'search enter a name that has profile on github' do
      visit fetch_users_path
      fill_in 'user_name', :with => 'belarba'
      click_button 'Search'
      expect(page).to have_content('Daniel Belarmino')
    end

    it 'search enter a name that has profile on github and save it' do
      visit fetch_users_path
      fill_in 'user_name', :with => 'belarba'
      click_button 'Search'
      expect{
        click_button 'Save user'
      }.to change(User, :count).by(1)
    end
  end
end
