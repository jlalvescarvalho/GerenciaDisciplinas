require "test_helper"

class DisciplicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disciplica = disciplicas(:one)
  end

  test "should get index" do
    get disciplicas_url
    assert_response :success
  end

  test "should get new" do
    get new_disciplica_url
    assert_response :success
  end

  test "should create disciplica" do
    assert_difference("Disciplina.count") do
      post disciplicas_url, params: { disciplica: { : @disciplica., Turma: @disciplica.Turma, _id: @disciplica._id, anoletivo: @disciplica.anoletivo, id: @disciplica.id, nome: @disciplica.nome } }
    end

    assert_redirected_to disciplica_url(Disciplina.last)
  end

  test "should show disciplica" do
    get disciplica_url(@disciplica)
    assert_response :success
  end

  test "should get edit" do
    get edit_disciplica_url(@disciplica)
    assert_response :success
  end

  test "should update disciplica" do
    patch disciplica_url(@disciplica), params: { disciplica: { : @disciplica., Turma: @disciplica.Turma, _id: @disciplica._id, anoletivo: @disciplica.anoletivo, id: @disciplica.id, nome: @disciplica.nome } }
    assert_redirected_to disciplica_url(@disciplica)
  end

  test "should destroy disciplica" do
    assert_difference("Disciplina.count", -1) do
      delete disciplica_url(@disciplica)
    end

    assert_redirected_to disciplicas_url
  end
end
