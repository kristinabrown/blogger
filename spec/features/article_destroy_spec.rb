require 'rails_helper'

RSpec.describe 'user can destroy an article' do
  context 'when article exists' do
    it 'deletes article and no longer appears on index' do
      Article.create(title: "The Great Gatsby", body: "yours truly")
      visit 'articles/1'
      expect(page).to have_content("The Great Gatsby")
      
      click_on "delete"
      
      expect(page).to have_content("Article The Great Gatsby has been destroyed!")
    end
  end
end