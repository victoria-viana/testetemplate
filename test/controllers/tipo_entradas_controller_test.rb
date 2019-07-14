require 'test_helper'

class TipoEntradasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_entrada = tipo_entradas(:one)
  end

  test "should get index" do
    get tipo_entradas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_entrada_url
    assert_response :success
  end

  test "should create tipo_entrada" do
    assert_difference('TipoEntrada.count') do
      post tipo_entradas_url, params: { tipo_entrada: { nome: @tipo_entrada.nome } }
    end

    assert_redirected_to tipo_entrada_url(TipoEntrada.last)
  end

  test "should show tipo_entrada" do
    get tipo_entrada_url(@tipo_entrada)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_entrada_url(@tipo_entrada)
    assert_response :success
  end

  test "should update tipo_entrada" do
    patch tipo_entrada_url(@tipo_entrada), params: { tipo_entrada: { nome: @tipo_entrada.nome } }
    assert_redirected_to tipo_entrada_url(@tipo_entrada)
  end

  test "should destroy tipo_entrada" do
    assert_difference('TipoEntrada.count', -1) do
      delete tipo_entrada_url(@tipo_entrada)
    end

    assert_redirected_to tipo_entradas_url
  end
end
