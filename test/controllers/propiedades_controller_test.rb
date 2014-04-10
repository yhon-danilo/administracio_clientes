require 'test_helper'

class PropiedadesControllerTest < ActionController::TestCase
  setup do
    @propiedad = propiedades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propiedades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propiedad" do
    assert_difference('Propiedad.count') do
      post :create, propiedad: { direccion: @propiedad.direccion, estrato: @propiedad.estrato, nombre: @propiedad.nombre, persona_id: @propiedad.persona_id, valor: @propiedad.valor }
    end

    assert_redirected_to propiedad_path(assigns(:propiedad))
  end

  test "should show propiedad" do
    get :show, id: @propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propiedad
    assert_response :success
  end

  test "should update propiedad" do
    patch :update, id: @propiedad, propiedad: { direccion: @propiedad.direccion, estrato: @propiedad.estrato, nombre: @propiedad.nombre, persona_id: @propiedad.persona_id, valor: @propiedad.valor }
    assert_redirected_to propiedad_path(assigns(:propiedad))
  end

  test "should destroy propiedad" do
    assert_difference('Propiedad.count', -1) do
      delete :destroy, id: @propiedad
    end

    assert_redirected_to propiedades_path
  end
end
