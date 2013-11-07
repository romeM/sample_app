require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it "should have the content 'Sample App'" do
      should have_content('Sample App')
    end

    it "should have the title 'Home'" do
      should have_title(full_title(''))
    end

    it "should not have a custom page title" do
      should_not have_title('| Home')
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the content 'Help'" do
      should have_content('Help')
    end

    it "should have the title 'Help'" do
      should have_title(full_title('Help'))
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should have the content 'About Us'" do
      should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      should have_title(full_title('About Us'))
    end
  end

  describe "Contact page" do
    before { visit contact_path }
    it "should have the content 'Contact'" do
      should have_content('Contact')
    end

    it "should have the title 'Contact'" do
      should have_title(full_title('Contact'))
    end
  end
end