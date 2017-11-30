require 'rails_helper'

describe 'test for admin proccesses' do
  it 'will test admin editing a new question' do

    question = FactoryBot.create(:question)
    question.save
    visit questions_path
    click_link 'Sign in'
    fill_in 'Email', :with => 'c@d.com'
    fill_in 'Password', :with => 'password1'
    within('.container') do
      click_on 'Sign in'
    end
    visit questions_path
    save_and_open_page
    click_link 'Edit'
    fill_in 'Title', :with => 'Title Test'
    fill_in 'Body', :with => 'Body Test'
    click_on 'Update Question'
    expect(page).to have_content "Question Updated"
  end
end
