require 'rails_helper'

RSpec.describe 'user updates an article' do 
  context 'with valid attributes' do 
    it 'saves the updates and displays the new title and body' do
      Article.create(title: "first title", body: "first body")
      visit 'articles/1'
      click_on "edit"
      fill_in "article[title]", with: "second title"
      fill_in "article[body]", with: "second body"
      click_on "Update Article"
      
      expect(page).to have_content("second title")
      expect(page).to have_content("second body")
    end
  end
end