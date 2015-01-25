require "rails_helper"

describe 'When visiting the home page' do

  it "has the title 'SusuBank'" do
    visit "/"
    expect(page).to have_content('SusuBank')
  end

  it "has an 'about page' link" do
    visit "/"
    expect(page).to have_link("About", about_path)
  end

  it "has a 'contact page' link" do
    visit "/"
    expect(page).to have_link("Contact", contact_path)
  end

  it "has a 'learn more' page link" do
    visit "/"
    expect(page).to have_link("Learn More", learn_path)
  end




  it "allows the 'About' link to visit About page"
  it "allows the 'Contact' link to visit About page"
  it "allows the 'Learn More' page to visit Learn More"
end