require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('the favorite path', {:type => :feature}) do
#   it('will add a new item to a list') do
#     visit('/')
#     fill_in('name', :with => 'dogs')
#     click_button('Go!')
#     expect(page).to have_content('dogs')
#   end
# end
