require "application_system_test_case"

class TipoEntradasTest < ApplicationSystemTestCase
  setup do
    @tipo_entrada = tipo_entradas(:one)
  end

  test "visiting the index" do
    visit tipo_entradas_url
    assert_selector "h1", text: "Tipo Entradas"
  end

  test "creating a Tipo entrada" do
    visit tipo_entradas_url
    click_on "New Tipo Entrada"

    fill_in "Nome", with: @tipo_entrada.nome
    click_on "Create Tipo entrada"

    assert_text "Tipo entrada was successfully created"
    click_on "Back"
  end

  test "updating a Tipo entrada" do
    visit tipo_entradas_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @tipo_entrada.nome
    click_on "Update Tipo entrada"

    assert_text "Tipo entrada was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo entrada" do
    visit tipo_entradas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo entrada was successfully destroyed"
  end
end
