require 'rails_helper'

RSpec.describe 'merchant index' do
  it 'retrieves a list of merchants' do
      # When I visit '/merchants'
    visit merchants_path
    save_and_open_page
    # I should see a list of merchants by name
    expect(page).to have_content('Merchants')
    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_link('Schroeder-Jerde')
    
    # and when I click the merchant's name
    click_on 'Schroeder-Jerde'
    # I should be on page '/merchants/:id'
    expect(current_path).to be(merchant_path(1))
    
    # And I should see a list of items that merchant sells.
    # expect(page).to have_content()
    
  end
    
    
end