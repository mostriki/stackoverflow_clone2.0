require 'rails_helper'

describe 'test for signing in process' do
  it 'will test user sign in' do
    FactoryBot.create(:user)
    visit signin_path
    fill_in 'Email', :with => 'a@b.com'
    fill_in 'Password', :with => 'password'
    within('.container') do
      click_on 'Sign in'
    end
    expect(page).to have_content "You've signed in."
  end
end
