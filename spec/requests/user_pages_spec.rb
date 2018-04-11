require "rails_helper"


RSpec.feature "profile page", :type => :feature do
  let(:user) { FactoryGirl.create(:user) }
  before {visit user_path(user)}
  it {expect(page).to have_content(user.name)}
  it { expect(page).to have_title(user.name) }
end