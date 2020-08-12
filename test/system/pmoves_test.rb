require "application_system_test_case"

class PmovesTest < ApplicationSystemTestCase
  setup do
    @pmove = pmoves(:one)
  end

  test "visiting the index" do
    visit pmoves_url
    assert_selector "h1", text: "Pmoves"
  end

  test "creating a Pmove" do
    visit pmoves_url
    click_on "New Pmove"

    fill_in "Move", with: @pmove.move_id
    fill_in "Pokemon", with: @pmove.pokemon_id
    click_on "Create Pmove"

    assert_text "Pmove was successfully created"
    click_on "Back"
  end

  test "updating a Pmove" do
    visit pmoves_url
    click_on "Edit", match: :first

    fill_in "Move", with: @pmove.move_id
    fill_in "Pokemon", with: @pmove.pokemon_id
    click_on "Update Pmove"

    assert_text "Pmove was successfully updated"
    click_on "Back"
  end

  test "destroying a Pmove" do
    visit pmoves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pmove was successfully destroyed"
  end
end
