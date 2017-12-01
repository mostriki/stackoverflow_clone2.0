require 'rails_helper'

describe 'test for signing out process' do
  it 'will test user signs out' do
    FactoryBot.create(:user)
    visit signin_path
    click_link 'Sign in'
    fill_in 'Email', :with => 'a@b.com'
    fill_in 'Password', :with => 'password'
    click_on 'sign_in_button'
    click_on 'signout'
    expect(page).to have_content "You've signed out."
  end
end
