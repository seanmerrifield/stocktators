require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "can i screw with this? just description? - yes" do
      visit '/static_pages/home'
      expect(page).to have_content('Stocktators!')
    end
  end
end
