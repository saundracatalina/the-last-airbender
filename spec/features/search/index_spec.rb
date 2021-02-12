require 'rails_helper'

describe 'search_path for nations' do
  it 'can show number of people who live in the Fire Nation' do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'
    expect(current_path).to eq(search_path)


  end

  it 'can see a list with detailed info for the first 25 members of Fire Nation'
#   And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
end
