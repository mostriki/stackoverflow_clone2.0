require 'rails_helper'

describe 'test for adding questions to pages' do
  it 'will test user adding a new question' do
    FactoryBot.create(:user)
    visit signin_path
    fill_in 'Email', :with => 'a@b.com'
    fill_in 'Password', :with => 'password'
    click_on 'sign_in_button'
    visit questions_path
    click_link 'Add Question'
    fill_in 'Title', :with => 'Title Test'
    fill_in 'Body', :with => 'Body Test'
    click_on 'Create Question'
    expect(page).to have_content "Question Submitted"
  end
  it 'will test user adding a new question' do
    FactoryBot.create(:user)
    visit signin_path
    fill_in 'Email', :with => 'a@b.com'
    fill_in 'Password', :with => 'password'
    click_on 'sign_in_button'
    visit questions_path
    click_link 'Add Question'
    fill_in 'Title', :with => ''
    fill_in 'Body', :with => ''
    click_on 'Create Question'
    expect(page).to have_content "New Question"
  end
end
