require "application_system_test_case"

class AlieventsTest < ApplicationSystemTestCase
  setup do
    @alievent = alievents(:one)
  end

  test "visiting the index" do
    visit alievents_url
    assert_selector "h1", text: "Alievents"
  end

  test "creating a Alievent" do
    visit alievents_url
    click_on "New Alievent"

    fill_in "Branch", with: @alievent.branch
    fill_in "Company", with: @alievent.company
    fill_in "Email", with: @alievent.email
    fill_in "Name", with: @alievent.name
    fill_in "Number", with: @alievent.number
    fill_in "Suggestions", with: @alievent.suggestions
    click_on "Create Alievent"

    assert_text "Alievent was successfully created"
    click_on "Back"
  end

  test "updating a Alievent" do
    visit alievents_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @alievent.branch
    fill_in "Company", with: @alievent.company
    fill_in "Email", with: @alievent.email
    fill_in "Name", with: @alievent.name
    fill_in "Number", with: @alievent.number
    fill_in "Suggestions", with: @alievent.suggestions
    click_on "Update Alievent"

    assert_text "Alievent was successfully updated"
    click_on "Back"
  end

  test "destroying a Alievent" do
    visit alievents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alievent was successfully destroyed"
  end
end
