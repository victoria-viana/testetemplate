require 'test_helper'

class ReboquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reboque = reboques(:one)
  end

  test "should get index" do
    get reboques_url
    assert_response :success
  end

  test "should get new" do
    get new_reboque_url
    assert_response :success
  end

  test "should create reboque" do
    assert_difference('Reboque.count') do
      post reboques_url, params: { reboque: { cidade_entrega: @reboque.cidade_entrega, cidade_origem: @reboque.cidade_origem, cliente_id: @reboque.cliente_id, data_reboque: @reboque.data_reboque, devolucao: @reboque.devolucao, endereco_destino: @reboque.endereco_destino, endereco_origem: @reboque.endereco_origem, frota_id: @reboque.frota_id, motorista: @reboque.motorista, valor: @reboque.valor, valor_terceiro: @reboque.valor_terceiro, veiculo_id: @reboque.veiculo_id } }
    end

    assert_redirected_to reboque_url(Reboque.last)
  end

  test "should show reboque" do
    get reboque_url(@reboque)
    assert_response :success
  end

  test "should get edit" do
    get edit_reboque_url(@reboque)
    assert_response :success
  end

  test "should update reboque" do
    patch reboque_url(@reboque), params: { reboque: { cidade_entrega: @reboque.cidade_entrega, cidade_origem: @reboque.cidade_origem, cliente_id: @reboque.cliente_id, data_reboque: @reboque.data_reboque, devolucao: @reboque.devolucao, endereco_destino: @reboque.endereco_destino, endereco_origem: @reboque.endereco_origem, frota_id: @reboque.frota_id, motorista: @reboque.motorista, valor: @reboque.valor, valor_terceiro: @reboque.valor_terceiro, veiculo_id: @reboque.veiculo_id } }
    assert_redirected_to reboque_url(@reboque)
  end

  test "should destroy reboque" do
    assert_difference('Reboque.count', -1) do
      delete reboque_url(@reboque)
    end

    assert_redirected_to reboques_url
  end
end
