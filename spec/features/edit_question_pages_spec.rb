require 'rails_helper'

describe 'test for admin proccesses' do
  it 'will test admin editing a new question' do
    FactoryBot.create(:user)
    visit signin_path
    fill_in 'Email', :with => 'a@b.com'
    fill_in 'Password', :with => 'password'
    within('.container') do
      click_on 'Sign in'
    end
    # puts page.body
    visit questions_path
    question = FactoryBot.create(:question)
    question.save
    click_link 'Edit Question'
    fill_in 'Title', :with => 'Title Test'
    fill_in 'Body', :with => 'Body Test'
    click_on 'Update Question'
    expect(page).to have_content "Question Updated"
  end
end
