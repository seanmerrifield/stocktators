require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Stocktators" }

	subject { page }

	shared_examples_for "all static pages" do
		it { should have_selector('h1', text: heading) }
		it { should have_title(full_title(page_title)) }
	end

	describe "Home page" do
		before { visit root_path }

		let(:heading)	{ 'Stocktators' }
		let(:page_title) { '' }

		it_should_behave_like "all static pages"
		it { should_not have_title('|Home') }
	end


	describe "Help page" do
		before { visit help_path }

		let(:heading) 		{ 'Help' }
		let(:page_title)	{ 'Help' }

		it_should_behave_like "all static pages"
	end

	describe "About page" do
		before { visit about_path }

		let(:heading)		{ 'About Us' }
		let(:page_title)	{ 'About Us' }

		it_should_behave_like "all static pages"
	end

	describe "Contact page" do
		before { visit contact_path }

		let(:heading)		{ 'Contact Us' }
		let(:page_title)	{ 'Contact Us' }

		it_should_behave_like "all static pages"
	end

  	describe "Stock insert page" do
  		before { visit newstock_path }

  		let(:heading)		{ 'New Stock Insertion!' }
  		let(:page_title)	{ 'New Stock Insertion' }

  		it_should_behave_like "all static pages"
  	end

  	it "should have the right links on the homepage" do
  		visit root_path

  		click_link "About"
  		expect(page).to have_title(full_title('About Us'))

  		click_link "Help"
  		expect(page).to have_title(full_title('Help'))

  		click_link "Contact"
  		expect(page).to have_title(full_title('Contact'))

  		click_link "Home"
  		expect(page).to have_title(full_title(''))

  		click_link "Sign up now!"
  		#add test here once link is complete

  		click_link "stocktators"
  		expect(page).to have_title(full_title(''))
  	end

end
