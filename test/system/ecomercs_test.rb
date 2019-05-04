require "application_system_test_case"

class EcomercsTest < ApplicationSystemTestCase
  setup do
    @ecomerc = ecomercs(:one)
  end

  test "visiting the index" do
    visit ecomercs_url
    assert_selector "h1", text: "Ecomercs"
  end

  test "creating a Ecomerc" do
    visit ecomercs_url
    click_on "New Ecomerc"

    fill_in "Department", with: @ecomerc.department_id
    fill_in "Location", with: @ecomerc.location
    fill_in "Name", with: @ecomerc.name
    click_on "Create Ecomerc"

    assert_text "Ecomerc was successfully created"
    click_on "Back"
  end

  test "updating a Ecomerc" do
    visit ecomercs_url
    click_on "Edit", match: :first

    fill_in "Department", with: @ecomerc.department_id
    fill_in "Location", with: @ecomerc.location
    fill_in "Name", with: @ecomerc.name
    click_on "Update Ecomerc"

    assert_text "Ecomerc was successfully updated"
    click_on "Back"
  end

  test "destroying a Ecomerc" do
    visit ecomercs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ecomerc was successfully destroyed"
  end
end
