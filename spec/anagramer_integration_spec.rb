require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('Index form', {:type => :feature}) do
  it('accepts a list of space-delimited strings and returns a list of true false results') do
    visit('/')
    fill_in('source_w', :with => 'race')
    fill_in('words_compare', :with => 'acre care rrrr')
    click_button('Send')
    expect(page).to have_content('acre: yes; care: yes; rrrr: no')
  end
end
