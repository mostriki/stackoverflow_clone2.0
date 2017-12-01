require 'rails_helper'

describe 'test for user authorization failure' do
  it 'will test if non-user can visit question creation page' do
    visit new_question_path
    expect(page).to have_content "Please Sign in to view this page"
  end

  it 'will test authorization failure for non-admin signin' do
    visit signin_path
    question=FactoryBot.create(:edit_question_authorization_failure)
    fill_in 'Email', :with => 'a@b.com'
    fill_in 'Password', :with => 'password'
    click_on 'sign_in_button'
    visit  edit_question_path(question)
    expect(page).to have_content "You are not an Admin!"
  end
end
