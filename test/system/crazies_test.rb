require "application_system_test_case"

class CraziesTest < ApplicationSystemTestCase
  setup do
    @crazy = crazies(:one)
  end

  test "visiting the index" do
    visit crazies_url
    assert_selector "h1", text: "Crazies"
  end

  test "should create crazy" do
    visit crazies_url
    click_on "New crazy"

    fill_in "Age", with: @crazy.age
    fill_in "Name", with: @crazy.name
    click_on "Create Crazy"

    assert_text "Crazy was successfully created"
    click_on "Back"
  end

  test "should update Crazy" do
    visit crazy_url(@crazy)
    click_on "Edit this crazy", match: :first

    fill_in "Age", with: @crazy.age
    fill_in "Name", with: @crazy.name
    click_on "Update Crazy"

    assert_text "Crazy was successfully updated"
    click_on "Back"
  end

  test "should destroy Crazy" do
    visit crazy_url(@crazy)
    click_on "Destroy this crazy", match: :first

    assert_text "Crazy was successfully destroyed"
  end
end
