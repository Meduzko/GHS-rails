require "application_system_test_case"

class SpecialinfosTest < ApplicationSystemTestCase
  setup do
    @specialinfo = specialinfos(:one)
  end

  test "visiting the index" do
    visit specialinfos_url
    assert_selector "h1", text: "Specialinfos"
  end

  test "creating a Specialinfo" do
    visit specialinfos_url
    click_on "New Specialinfo"

    fill_in "Actioner Access", with: @specialinfo.actioner_access
    fill_in "Description", with: @specialinfo.description
    fill_in "Document Type", with: @specialinfo.document_type
    fill_in "Name", with: @specialinfo.name
    fill_in "User Access", with: @specialinfo.user_access
    click_on "Create Specialinfo"

    assert_text "Specialinfo was successfully created"
    click_on "Back"
  end

  test "updating a Specialinfo" do
    visit specialinfos_url
    click_on "Edit", match: :first

    fill_in "Actioner Access", with: @specialinfo.actioner_access
    fill_in "Description", with: @specialinfo.description
    fill_in "Document Type", with: @specialinfo.document_type
    fill_in "Name", with: @specialinfo.name
    fill_in "User Access", with: @specialinfo.user_access
    click_on "Update Specialinfo"

    assert_text "Specialinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Specialinfo" do
    visit specialinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specialinfo was successfully destroyed"
  end
end
