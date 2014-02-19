require 'spec_helper'

describe "Static pages" do

  describe "Can I screw with this too? - yes!" do

    it "can i screw with this? just description? - yes" do
      visit '/static_pages/home'
      expect(page).to have_content('Stocktators!')
    end
  end

  describe "Stock insert page" do

    it "Stock insert page" do
      visit '/static_pages/newstock'
      expect(page).to have_content('New Stock Insertion!')
    end
  end
  
end
