require 'rails_helper'

describe 'welcome page' do
  it 'can select Fire Nation, click search, and be redirected to search path' do
    visit root_path

    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
  end
end
