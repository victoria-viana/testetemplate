require 'test_helper'

class FrotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frotum = frota(:one)
  end

  test "should get index" do
    get frota_url
    assert_response :success
  end

  test "should get new" do
    get new_frotum_url
    assert_response :success
  end

  test "should create frotum" do
    assert_difference('Frotum.count') do
      post frota_url, params: { frotum: { interno: @frotum.interno, modelo: @frotum.modelo, placa: @frotum.placa, renavan: @frotum.renavan, tipo_entrada_id: @frotum.tipo_entrada_id } }
    end

    assert_redirected_to frotum_url(Frotum.last)
  end

  test "should show frotum" do
    get frotum_url(@frotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_frotum_url(@frotum)
    assert_response :success
  end

  test "should update frotum" do
    patch frotum_url(@frotum), params: { frotum: { interno: @frotum.interno, modelo: @frotum.modelo, placa: @frotum.placa, renavan: @frotum.renavan, tipo_entrada_id: @frotum.tipo_entrada_id } }
    assert_redirected_to frotum_url(@frotum)
  end

  test "should destroy frotum" do
    assert_difference('Frotum.count', -1) do
      delete frotum_url(@frotum)
    end

    assert_redirected_to frota_url
  end
end
