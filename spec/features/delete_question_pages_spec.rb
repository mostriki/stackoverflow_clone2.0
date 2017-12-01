require 'rails_helper'

describe 'test for admin proccesses' do
  it 'will test admin delete of a question' do

    question = FactoryBot.create(:edit_question_admin)
    question.save
    visit questions_path
    click_link 'Sign in'
    fill_in 'Email', :with => 'c@d.com'
    fill_in 'Password', :with => 'password1'
    click_on 'sign_in_button'
    visit questions_path
    click_on 'Delete'
    expect(page).to have_content "Question successfully deleted!"
  end
end
