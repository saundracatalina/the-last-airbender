require 'rails_helper'

describe 'search_path for nations' do
  it 'can show number of people who live in the Fire Nation' do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Number of people in fire_nation: 97")
  end

  it 'can see a list with detailed info for the first 25 members of Fire Nation' do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
    # within("#member-#{}") do
      expect(page).to have_content("Member Name: Afiko")
    # expect(page).to have_content("Allies: ")
    # end
  end
end
