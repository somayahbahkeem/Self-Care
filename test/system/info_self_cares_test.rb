require "application_system_test_case"

class InfoSelfCaresTest < ApplicationSystemTestCase
  setup do
    @info_self_care = info_self_cares(:one)
  end

  test "visiting the index" do
    visit info_self_cares_url
    assert_selector "h1", text: "Info Self Cares"
  end

  test "creating a Info self care" do
    visit info_self_cares_url
    click_on "New Info Self Care"

    fill_in "Care-name", with: @info_self_care.Care-Name
    fill_in "Date-to", with: @info_self_care.Date-To
    fill_in "Date-frome", with: @info_self_care.Date-frome
    fill_in "Location", with: @info_self_care.Location
    fill_in "Reminder-time", with: @info_self_care.Reminder-Time
    fill_in "Time", with: @info_self_care.Time
    fill_in "Period", with: @info_self_care.period
    click_on "Create Info self care"

    assert_text "Info self care was successfully created"
    click_on "Back"
  end

  test "updating a Info self care" do
    visit info_self_cares_url
    click_on "Edit", match: :first

    fill_in "Care-name", with: @info_self_care.Care-Name
    fill_in "Date-to", with: @info_self_care.Date-To
    fill_in "Date-frome", with: @info_self_care.Date-frome
    fill_in "Location", with: @info_self_care.Location
    fill_in "Reminder-time", with: @info_self_care.Reminder-Time
    fill_in "Time", with: @info_self_care.Time
    fill_in "Period", with: @info_self_care.period
    click_on "Update Info self care"

    assert_text "Info self care was successfully updated"
    click_on "Back"
  end

  test "destroying a Info self care" do
    visit info_self_cares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Info self care was successfully destroyed"
  end
end
