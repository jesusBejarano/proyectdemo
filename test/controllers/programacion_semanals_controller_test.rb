require 'test_helper'

class ProgramacionSemanalsControllerTest < ActionController::TestCase
  setup do
    @programacion_semanal = programacion_semanals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programacion_semanals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programacion_semanal" do
    assert_difference('ProgramacionSemanal.count') do
      post :create, programacion_semanal: { TipoMenu_id: @programacion_semanal.TipoMenu_id, dia: @programacion_semanal.dia, local_id: @programacion_semanal.local_id, periodo_id: @programacion_semanal.periodo_id, plato_id: @programacion_semanal.plato_id, stock: @programacion_semanal.stock }
    end

    assert_redirected_to programacion_semanal_path(assigns(:programacion_semanal))
  end

  test "should show programacion_semanal" do
    get :show, id: @programacion_semanal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programacion_semanal
    assert_response :success
  end

  test "should update programacion_semanal" do
    patch :update, id: @programacion_semanal, programacion_semanal: { TipoMenu_id: @programacion_semanal.TipoMenu_id, dia: @programacion_semanal.dia, local_id: @programacion_semanal.local_id, periodo_id: @programacion_semanal.periodo_id, plato_id: @programacion_semanal.plato_id, stock: @programacion_semanal.stock }
    assert_redirected_to programacion_semanal_path(assigns(:programacion_semanal))
  end

  test "should destroy programacion_semanal" do
    assert_difference('ProgramacionSemanal.count', -1) do
      delete :destroy, id: @programacion_semanal
    end

    assert_redirected_to programacion_semanals_path
  end
end
