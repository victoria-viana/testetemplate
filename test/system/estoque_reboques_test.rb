require "application_system_test_case"

class EstoqueReboquesTest < ApplicationSystemTestCase
  setup do
    @estoque_reboque = estoque_reboques(:one)
  end

  test "visiting the index" do
    visit estoque_reboques_url
    assert_selector "h1", text: "Estoque Reboques"
  end

  test "creating a Estoque reboque" do
    visit estoque_reboques_url
    click_on "New Estoque Reboque"

    fill_in "Estoque", with: @estoque_reboque.estoque_id
    fill_in "Reboque", with: @estoque_reboque.reboque_id
    click_on "Create Estoque reboque"

    assert_text "Estoque reboque was successfully created"
    click_on "Back"
  end

  test "updating a Estoque reboque" do
    visit estoque_reboques_url
    click_on "Edit", match: :first

    fill_in "Estoque", with: @estoque_reboque.estoque_id
    fill_in "Reboque", with: @estoque_reboque.reboque_id
    click_on "Update Estoque reboque"

    assert_text "Estoque reboque was successfully updated"
    click_on "Back"
  end

  test "destroying a Estoque reboque" do
    visit estoque_reboques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estoque reboque was successfully destroyed"
  end
end
