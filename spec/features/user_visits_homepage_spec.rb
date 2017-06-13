require "rails_helper"

# feature == "describe" - the overarching functionality the file covers 
# scenario == it - individual descriptions of tests
feature "user visits home page" do
	scenario "successfully" do
		visit root_path

		expect(page).to have_css 'h1', text: 'Lists'
	end
end
