require "rails_helper"

RSpec.feature "Home Page", :type => :feature do
  it "should have the content 'Sample App'" do
    visit root_path
    expect(page).to have_content("Sample App")
  end
end

RSpec.feature "Help Page", :type => :feature do
  it "should have the content 'Help'" do
    visit help_path
    expect(page).to have_content('Help')
  end
end

RSpec.feature "About Page", :type => :feature do
  it "should have the content 'About Us'" do
    visit about_path
    expect(page).to have_content('About Us')
  end
end

RSpec.feature "Home Page Title", :type => :feature do
  it "should have the right title" do
    visit root_path
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
  end
end

RSpec.feature "Help Page Title", :type => :feature do
  it "should have the right title" do
    visit help_path
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  end
end

RSpec.feature "Home Page Title", :type => :feature do
  it "should have the right title" do
    visit about_path
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
  end
end