require 'test_helper'

class EstoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estoque = estoques(:one)
  end

  test "should get index" do
    get estoques_url
    assert_response :success
  end

  test "should get new" do
    get new_estoque_url
    assert_response :success
  end

  test "should create estoque" do
    assert_difference('Estoque.count') do
      post estoques_url, params: { estoque: { banco_id: @estoque.banco_id, chave: @estoque.chave, cidade_id: @estoque.cidade_id, cliente_id: @estoque.cliente_id, data_entrada: @estoque.data_entrada, data_saida: @estoque.data_saida, funciona: @estoque.funciona, reboque: @estoque.reboque, responsavel_entrada: @estoque.responsavel_entrada, responsavel_saida: @estoque.responsavel_saida, tipo_entrada_id: @estoque.tipo_entrada_id, veiculo_id: @estoque.veiculo_id } }
    end

    assert_redirected_to estoque_url(Estoque.last)
  end

  test "should show estoque" do
    get estoque_url(@estoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_estoque_url(@estoque)
    assert_response :success
  end

  test "should update estoque" do
    patch estoque_url(@estoque), params: { estoque: { banco_id: @estoque.banco_id, chave: @estoque.chave, cidade_id: @estoque.cidade_id, cliente_id: @estoque.cliente_id, data_entrada: @estoque.data_entrada, data_saida: @estoque.data_saida, funciona: @estoque.funciona, reboque: @estoque.reboque, responsavel_entrada: @estoque.responsavel_entrada, responsavel_saida: @estoque.responsavel_saida, tipo_entrada_id: @estoque.tipo_entrada_id, veiculo_id: @estoque.veiculo_id } }
    assert_redirected_to estoque_url(@estoque)
  end

  test "should destroy estoque" do
    assert_difference('Estoque.count', -1) do
      delete estoque_url(@estoque)
    end

    assert_redirected_to estoques_url
  end
end
