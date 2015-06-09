require 'test_helper'

class TipoMenusControllerTest < ActionController::TestCase
  setup do
    @tipo_menu = tipo_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_menu" do
    assert_difference('TipoMenu.count') do
      post :create, tipo_menu: { PrecioFijo: @tipo_menu.PrecioFijo, nombre: @tipo_menu.nombre, precio: @tipo_menu.precio }
    end

    assert_redirected_to tipo_menu_path(assigns(:tipo_menu))
  end

  test "should show tipo_menu" do
    get :show, id: @tipo_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_menu
    assert_response :success
  end

  test "should update tipo_menu" do
    patch :update, id: @tipo_menu, tipo_menu: { PrecioFijo: @tipo_menu.PrecioFijo, nombre: @tipo_menu.nombre, precio: @tipo_menu.precio }
    assert_redirected_to tipo_menu_path(assigns(:tipo_menu))
  end

  test "should destroy tipo_menu" do
    assert_difference('TipoMenu.count', -1) do
      delete :destroy, id: @tipo_menu
    end

    assert_redirected_to tipo_menus_path
  end
end
