require "spec_helper"

describe "Signing up" do
	it "allows a user to sign up and creates the object in the database" do
		expect(User.count).to eq(0)

		visit "/"
		expect(page).to have_content "Sign Up"
		click_link "Sign Up"

		fill_in "First Name", with: "Jim"
		fill_in "Last Name", with: "Withington"
		fill_in "Email", with: "testing123@mailinator.com"
		fill_in "Password", with: "testing123"
		fill_in "Password (Again)", with: "testing123"
		click_button "Sign Up"

		expect(User.count).to eq(1)
	end
end