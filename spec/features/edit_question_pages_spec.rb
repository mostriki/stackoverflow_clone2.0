require 'rails_helper'

describe 'test for admin proccesses' do
  it 'will test admin editing a new question' do
    FactoryBot.create(:edit_question_admin)
    visit questions_path
    click_link 'Sign in'
    fill_in 'Email', :with => 'c@d.com'
    fill_in 'Password', :with => 'password1'
    click_on 'sign_in_button'
    visit questions_path
    click_link 'Edit'
    fill_in 'Title', :with => 'Title Test'
    fill_in 'Body', :with => 'Body Test'
    click_on 'Update Question'
    expect(page).to have_content "Question Updated"
  end

  it 'will test admin editing a new question' do
    FactoryBot.create(:edit_question_admin)
    visit questions_path
    click_link 'Sign in'
    fill_in 'Email', :with => 'c@d.com'
    fill_in 'Password', :with => 'password1'
    click_on 'sign_in_button'
    visit questions_path
    click_link 'Edit'
    fill_in 'Title', :with => ''
    fill_in 'Body', :with => ''
    click_on 'Update Question'
    expect(page).to have_content "Edit Question"
  end
end
