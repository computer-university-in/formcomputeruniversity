require "application_system_test_case"

class WdtmzsTest < ApplicationSystemTestCase
  setup do
    @wdtmz = wdtmzs(:one)
  end

  test "visiting the index" do
    visit wdtmzs_url
    assert_selector "h1", text: "Wdtmzs"
  end

  test "creating a Wdtmz" do
    visit wdtmzs_url
    click_on "New Wdtmz"

    fill_in "Branch", with: @wdtmz.branch
    fill_in "College", with: @wdtmz.college
    fill_in "Email", with: @wdtmz.email
    fill_in "Name", with: @wdtmz.name
    fill_in "Number", with: @wdtmz.number
    fill_in "Profession", with: @wdtmz.profession
    fill_in "Suggestions", with: @wdtmz.suggestions
    fill_in "Title", with: @wdtmz.title
    click_on "Create Wdtmz"

    assert_text "Wdtmz was successfully created"
    click_on "Back"
  end

  test "updating a Wdtmz" do
    visit wdtmzs_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @wdtmz.branch
    fill_in "College", with: @wdtmz.college
    fill_in "Email", with: @wdtmz.email
    fill_in "Name", with: @wdtmz.name
    fill_in "Number", with: @wdtmz.number
    fill_in "Profession", with: @wdtmz.profession
    fill_in "Suggestions", with: @wdtmz.suggestions
    fill_in "Title", with: @wdtmz.title
    click_on "Update Wdtmz"

    assert_text "Wdtmz was successfully updated"
    click_on "Back"
  end

  test "destroying a Wdtmz" do
    visit wdtmzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wdtmz was successfully destroyed"
  end
end
