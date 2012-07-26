require 'test_helper'

class MiniPagosControllerTest < ActionController::TestCase
  setup do
    @mini_pago = mini_pagos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mini_pagos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mini_pago" do
    assert_difference('MiniPago.count') do
      post :create, mini_pago: { dni: @mini_pago.dni, fecha_pago: @mini_pago.fecha_pago, folio: @mini_pago.folio, id_pago: @mini_pago.id_pago, monto: @mini_pago.monto }
    end

    assert_redirected_to mini_pago_path(assigns(:mini_pago))
  end

  test "should show mini_pago" do
    get :show, id: @mini_pago
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mini_pago
    assert_response :success
  end

  test "should update mini_pago" do
    put :update, id: @mini_pago, mini_pago: { dni: @mini_pago.dni, fecha_pago: @mini_pago.fecha_pago, folio: @mini_pago.folio, id_pago: @mini_pago.id_pago, monto: @mini_pago.monto }
    assert_redirected_to mini_pago_path(assigns(:mini_pago))
  end

  test "should destroy mini_pago" do
    assert_difference('MiniPago.count', -1) do
      delete :destroy, id: @mini_pago
    end

    assert_redirected_to mini_pagos_path
  end
end
