require "test_helper"

class AtividadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atividade = atividades(:one)
  end

  test "should get index" do
    get atividades_url
    assert_response :success
  end

  test "should get new" do
    get new_atividade_url
    assert_response :success
  end

  test "should create atividade" do
    assert_difference("Atividade.count") do
      post atividades_url, params: { atividade: { : @atividade., _id: @atividade._id, bimenstre: @atividade.bimenstre, data: @atividade.data, descrcao: @atividade.descrcao, disciplina: @atividade.disciplina, id: @atividade.id, titulo: @atividade.titulo } }
    end

    assert_redirected_to atividade_url(Atividade.last)
  end

  test "should show atividade" do
    get atividade_url(@atividade)
    assert_response :success
  end

  test "should get edit" do
    get edit_atividade_url(@atividade)
    assert_response :success
  end

  test "should update atividade" do
    patch atividade_url(@atividade), params: { atividade: { : @atividade., _id: @atividade._id, bimenstre: @atividade.bimenstre, data: @atividade.data, descrcao: @atividade.descrcao, disciplina: @atividade.disciplina, id: @atividade.id, titulo: @atividade.titulo } }
    assert_redirected_to atividade_url(@atividade)
  end

  test "should destroy atividade" do
    assert_difference("Atividade.count", -1) do
      delete atividade_url(@atividade)
    end

    assert_redirected_to atividades_url
  end
end
