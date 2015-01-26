require "rails_helper"

describe 'When visiting the home page' do

  before :each do
    visit root_path
  end

  it "has the title 'SusuBank'" do
    expect(page).to have_content('SusuBank')
  end

  it "has an 'about page' link" do
    expect(page).to have_link("About", about_path)
  end

  it "has a 'contact page' link" do
    expect(page).to have_link("Contact", contact_path)
  end

  it "has a 'learn more' page link" do
    expect(page).to have_link("Learn More", learn_path)
  end

    describe "clicking on the link" do
      it "allows the 'About' link to visit About page" do
        click_link "About"
        expect(current_path).to eq(about_path)
      end

      it "allows the 'Contact' link to visit About page" do
        click_link "Contact"
        expect(current_path).to eq(contact_path)
      end

      it "allows the 'Learn More' page to visit Learn More" do
        click_link "Learn More"
        expect(current_path).to eq(learn_path)
      end
    end
end