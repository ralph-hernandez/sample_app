require 'rails_helper'
# require 'capybara/rspec'

# RSpec.describe "StaticPages", :type => :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end
#  

# require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home page" do
		before {visit root_path}

		it { should have_selector "h1", text: "Sample App"}

		it { should have_selector "title", text: full_title('Home')}

		# it "should have the content 'Sample App'" do
		# 	page.should have_selector('h1', text: 'Sample App')
		# end

		# it "should have the right title home" do
		# 	page.should have_selector('title', text: "Ruby on Rails | Home")
		# end
	end

	describe "Help page" do
		before {visit help_path}

		it { should have_selector('title', text: full_title('Help')) }
		it "should have the content 'Help'" do
			page.should have_selector('h1', text: 'Help')
		end

		# it "should have the right title help" do
		# 	page.should have_selector(:title, text: "Help")
		# end
	end

	describe "About page" do	
		before {visit about_path}

		it "should have the content 'About Us'" do
			page.should have_selector('h1', text: 'About Us')
		end

		it "should have the right title about" do
			page.should have_selector('title', text: "Ruby on Rails | About Us")
		end
	end
end


# # save as static_pages_controller_test.rb
# require 'test_helper'

# class StaticPagesControllerTest < ActionController::TestCase

#   test "should get home" do
#     get :home
#     assert_response :success
#     assert_select "title", "Ruby on Rails | Home"
#   end

#   test "should get help" do
#     get :help
#     assert_response :success
#     assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
#   end

#   test "should get about" do
#     get :about
#     assert_response :success
#     assert_select "title", "About | Ruby on Rails Tutorial Sample App"
#   end

#   test "should get contact" do
#     get :contact
#     assert_response :success
#     assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
#   end
# end



