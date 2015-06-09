require 'test_helper'

class TipoPlatosControllerTest < ActionController::TestCase
  setup do
    @tipo_plato = tipo_platos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_platos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_plato" do
    assert_difference('TipoPlato.count') do
      post :create, tipo_plato: { nombre: @tipo_plato.nombre }
    end

    assert_redirected_to tipo_plato_path(assigns(:tipo_plato))
  end

  test "should show tipo_plato" do
    get :show, id: @tipo_plato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_plato
    assert_response :success
  end

  test "should update tipo_plato" do
    patch :update, id: @tipo_plato, tipo_plato: { nombre: @tipo_plato.nombre }
    assert_redirected_to tipo_plato_path(assigns(:tipo_plato))
  end

  test "should destroy tipo_plato" do
    assert_difference('TipoPlato.count', -1) do
      delete :destroy, id: @tipo_plato
    end

    assert_redirected_to tipo_platos_path
  end
end
