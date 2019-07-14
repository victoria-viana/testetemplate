require "application_system_test_case"

class ReboquesTest < ApplicationSystemTestCase
  setup do
    @reboque = reboques(:one)
  end

  test "visiting the index" do
    visit reboques_url
    assert_selector "h1", text: "Reboques"
  end

  test "creating a Reboque" do
    visit reboques_url
    click_on "New Reboque"

    fill_in "Cidade entrega", with: @reboque.cidade_entrega
    fill_in "Cidade origem", with: @reboque.cidade_origem
    fill_in "Cliente", with: @reboque.cliente_id
    fill_in "Data reboque", with: @reboque.data_reboque
    check "Devolucao" if @reboque.devolucao
    fill_in "Endereco destino", with: @reboque.endereco_destino
    fill_in "Endereco origem", with: @reboque.endereco_origem
    fill_in "Frota", with: @reboque.frota_id
    fill_in "Motorista", with: @reboque.motorista
    fill_in "Valor", with: @reboque.valor
    fill_in "Valor terceiro", with: @reboque.valor_terceiro
    fill_in "Veiculo", with: @reboque.veiculo_id
    click_on "Create Reboque"

    assert_text "Reboque was successfully created"
    click_on "Back"
  end

  test "updating a Reboque" do
    visit reboques_url
    click_on "Edit", match: :first

    fill_in "Cidade entrega", with: @reboque.cidade_entrega
    fill_in "Cidade origem", with: @reboque.cidade_origem
    fill_in "Cliente", with: @reboque.cliente_id
    fill_in "Data reboque", with: @reboque.data_reboque
    check "Devolucao" if @reboque.devolucao
    fill_in "Endereco destino", with: @reboque.endereco_destino
    fill_in "Endereco origem", with: @reboque.endereco_origem
    fill_in "Frota", with: @reboque.frota_id
    fill_in "Motorista", with: @reboque.motorista
    fill_in "Valor", with: @reboque.valor
    fill_in "Valor terceiro", with: @reboque.valor_terceiro
    fill_in "Veiculo", with: @reboque.veiculo_id
    click_on "Update Reboque"

    assert_text "Reboque was successfully updated"
    click_on "Back"
  end

  test "destroying a Reboque" do
    visit reboques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reboque was successfully destroyed"
  end
end
