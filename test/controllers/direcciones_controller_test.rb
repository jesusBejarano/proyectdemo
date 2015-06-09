require 'test_helper'

class DireccionesControllerTest < ActionController::TestCase
  setup do
    @direccione = direcciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direcciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direccione" do
    assert_difference('Direccione.count') do
      post :create, direccione: { nombre: @direccione.nombre, ubigeo_id: @direccione.ubigeo_id, user_id: @direccione.user_id }
    end

    assert_redirected_to direccione_path(assigns(:direccione))
  end

  test "should show direccione" do
    get :show, id: @direccione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direccione
    assert_response :success
  end

  test "should update direccione" do
    patch :update, id: @direccione, direccione: { nombre: @direccione.nombre, ubigeo_id: @direccione.ubigeo_id, user_id: @direccione.user_id }
    assert_redirected_to direccione_path(assigns(:direccione))
  end

  test "should destroy direccione" do
    assert_difference('Direccione.count', -1) do
      delete :destroy, id: @direccione
    end

    assert_redirected_to direcciones_path
  end
end
