require 'rails_helper'

RSpec.describe 'Compare users', type: :system do
  describe 'test compare users' do
    it 'shows alert' do
      visit fetch_repos_path
      expect(page).to have_content('Users') && have_content('User name:')
    end

    it 'search without enter a name' do
      visit fetch_repos_path
      click_button 'Search'
      text = page.driver.browser.switch_to.alert.text
      expect(text).to eq 'Please enter a user name to find'
    end

    it 'search enter a name that has no profile on github' do
      visit fetch_repos_path
      fill_in 'user_name', :with => '??????????'
      click_button 'Search'
      expect(page).to have_content('User not found')
    end

    it 'search enter a name that has no repos on github' do
      visit fetch_repos_path
      fill_in 'user_name', :with => 'ligia'
      click_button 'Search'
      expect(page).to have_content('This user has no repositories')
    end

    it 'search enter a name that has profile on github' do
      visit fetch_repos_path
      fill_in 'user_name', :with => 'belarba'
      click_button 'Search'
      expect(page).to have_content('Search result')
    end

    it 'search enter a name that has repos on github and save it' do
      visit fetch_repos_path
      fill_in 'user_name', :with => 'belarba'
      click_button 'Search'
      expect{
        click_button('Save repo', :match => :first)
      }.to change(Repo, :count).by(1)
    end
  end
end
