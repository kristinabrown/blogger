require 'rails_helper'

RSpec.describe 'user creates an article' do
  context 'with valid attributes' do
    it 'saves and displays the article title and body' do
      visit new_article_path
      fill_in "article[title]", with: "this title"
      fill_in "article[body]", with: "this body"
      click_on "Create Article"
      
      expect(page).to have_content("this title")
      expect(page).to have_content("this body")
    end
  end
end
    