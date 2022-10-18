require "test_helper"

class AvaliaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avalium = avalia(:one)
  end

  test "should get index" do
    get avalia_url
    assert_response :success
  end

  test "should get new" do
    get new_avalium_url
    assert_response :success
  end

  test "should create avalium" do
    assert_difference("Avalium.count") do
      post avalia_url, params: { avalium: { : @avalium., Aluno: @avalium.Aluno, Atividade: @avalium.Atividade, _id: @avalium._id, id: @avalium.id, observacao: @avalium.observacao, pontos: @avalium.pontos } }
    end

    assert_redirected_to avalium_url(Avalium.last)
  end

  test "should show avalium" do
    get avalium_url(@avalium)
    assert_response :success
  end

  test "should get edit" do
    get edit_avalium_url(@avalium)
    assert_response :success
  end

  test "should update avalium" do
    patch avalium_url(@avalium), params: { avalium: { : @avalium., Aluno: @avalium.Aluno, Atividade: @avalium.Atividade, _id: @avalium._id, id: @avalium.id, observacao: @avalium.observacao, pontos: @avalium.pontos } }
    assert_redirected_to avalium_url(@avalium)
  end

  test "should destroy avalium" do
    assert_difference("Avalium.count", -1) do
      delete avalium_url(@avalium)
    end

    assert_redirected_to avalia_url
  end
end
