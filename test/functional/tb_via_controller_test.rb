require 'test_helper'

class TbViaControllerTest < ActionController::TestCase
  setup do
    @tb_vium = tb_via(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tb_via)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tb_vium" do
    assert_difference('TbVium.count') do
      post :create, tb_vium: { descripcion: @tb_vium.descripcion, fec_registro: @tb_vium.fec_registro, id_estado: @tb_vium.id_estado, id_via: @tb_vium.id_via }
    end

    assert_redirected_to tb_vium_path(assigns(:tb_vium))
  end

  test "should show tb_vium" do
    get :show, id: @tb_vium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tb_vium
    assert_response :success
  end

  test "should update tb_vium" do
    put :update, id: @tb_vium, tb_vium: { descripcion: @tb_vium.descripcion, fec_registro: @tb_vium.fec_registro, id_estado: @tb_vium.id_estado, id_via: @tb_vium.id_via }
    assert_redirected_to tb_vium_path(assigns(:tb_vium))
  end

  test "should destroy tb_vium" do
    assert_difference('TbVium.count', -1) do
      delete :destroy, id: @tb_vium
    end

    assert_redirected_to tb_via_path
  end
end
