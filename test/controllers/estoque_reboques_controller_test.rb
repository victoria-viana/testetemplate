require 'test_helper'

class EstoqueReboquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estoque_reboque = estoque_reboques(:one)
  end

  test "should get index" do
    get estoque_reboques_url
    assert_response :success
  end

  test "should get new" do
    get new_estoque_reboque_url
    assert_response :success
  end

  test "should create estoque_reboque" do
    assert_difference('EstoqueReboque.count') do
      post estoque_reboques_url, params: { estoque_reboque: { estoque_id: @estoque_reboque.estoque_id, reboque_id: @estoque_reboque.reboque_id } }
    end

    assert_redirected_to estoque_reboque_url(EstoqueReboque.last)
  end

  test "should show estoque_reboque" do
    get estoque_reboque_url(@estoque_reboque)
    assert_response :success
  end

  test "should get edit" do
    get edit_estoque_reboque_url(@estoque_reboque)
    assert_response :success
  end

  test "should update estoque_reboque" do
    patch estoque_reboque_url(@estoque_reboque), params: { estoque_reboque: { estoque_id: @estoque_reboque.estoque_id, reboque_id: @estoque_reboque.reboque_id } }
    assert_redirected_to estoque_reboque_url(@estoque_reboque)
  end

  test "should destroy estoque_reboque" do
    assert_difference('EstoqueReboque.count', -1) do
      delete estoque_reboque_url(@estoque_reboque)
    end

    assert_redirected_to estoque_reboques_url
  end
end
