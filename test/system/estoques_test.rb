require "application_system_test_case"

class EstoquesTest < ApplicationSystemTestCase
  setup do
    @estoque = estoques(:one)
  end

  test "visiting the index" do
    visit estoques_url
    assert_selector "h1", text: "Estoques"
  end

  test "creating a Estoque" do
    visit estoques_url
    click_on "New Estoque"

    fill_in "Banco", with: @estoque.banco_id
    check "Chave" if @estoque.chave
    fill_in "Cidade", with: @estoque.cidade_id
    fill_in "Cliente", with: @estoque.cliente_id
    fill_in "Data entrada", with: @estoque.data_entrada
    fill_in "Data saida", with: @estoque.data_saida
    check "Funciona" if @estoque.funciona
    check "Reboque" if @estoque.reboque
    fill_in "Responsavel entrada", with: @estoque.responsavel_entrada
    fill_in "Responsavel saida", with: @estoque.responsavel_saida
    fill_in "Tipo entrada", with: @estoque.tipo_entrada_id
    fill_in "Veiculo", with: @estoque.veiculo_id
    click_on "Create Estoque"

    assert_text "Estoque was successfully created"
    click_on "Back"
  end

  test "updating a Estoque" do
    visit estoques_url
    click_on "Edit", match: :first

    fill_in "Banco", with: @estoque.banco_id
    check "Chave" if @estoque.chave
    fill_in "Cidade", with: @estoque.cidade_id
    fill_in "Cliente", with: @estoque.cliente_id
    fill_in "Data entrada", with: @estoque.data_entrada
    fill_in "Data saida", with: @estoque.data_saida
    check "Funciona" if @estoque.funciona
    check "Reboque" if @estoque.reboque
    fill_in "Responsavel entrada", with: @estoque.responsavel_entrada
    fill_in "Responsavel saida", with: @estoque.responsavel_saida
    fill_in "Tipo entrada", with: @estoque.tipo_entrada_id
    fill_in "Veiculo", with: @estoque.veiculo_id
    click_on "Update Estoque"

    assert_text "Estoque was successfully updated"
    click_on "Back"
  end

  test "destroying a Estoque" do
    visit estoques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estoque was successfully destroyed"
  end
end
