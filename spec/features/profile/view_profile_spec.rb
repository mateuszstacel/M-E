require 'rails_helper'
require_relative '../sessions_helpers.rb'

RSpec.feature 'Profile', type: :feature do
  scenario 'User can see their profile' do
    sign_up
    click_on(class: 'profile-link')
    expect(page).to have_content('test-username')
  end
end
