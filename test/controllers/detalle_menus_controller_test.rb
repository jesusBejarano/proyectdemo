require 'test_helper'

class DetalleMenusControllerTest < ActionController::TestCase
  setup do
    @detalle_menu = detalle_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_menu" do
    assert_difference('DetalleMenu.count') do
      post :create, detalle_menu: { DetallePedido_id: @detalle_menu.DetallePedido_id, TipoMenu_id: @detalle_menu.TipoMenu_id, plato_id: @detalle_menu.plato_id }
    end

    assert_redirected_to detalle_menu_path(assigns(:detalle_menu))
  end

  test "should show detalle_menu" do
    get :show, id: @detalle_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_menu
    assert_response :success
  end

  test "should update detalle_menu" do
    patch :update, id: @detalle_menu, detalle_menu: { DetallePedido_id: @detalle_menu.DetallePedido_id, TipoMenu_id: @detalle_menu.TipoMenu_id, plato_id: @detalle_menu.plato_id }
    assert_redirected_to detalle_menu_path(assigns(:detalle_menu))
  end

  test "should destroy detalle_menu" do
    assert_difference('DetalleMenu.count', -1) do
      delete :destroy, id: @detalle_menu
    end

    assert_redirected_to detalle_menus_path
  end
end
