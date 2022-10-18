require "application_system_test_case"

class AtividadesTest < ApplicationSystemTestCase
  setup do
    @atividade = atividades(:one)
  end

  test "visiting the index" do
    visit atividades_url
    assert_selector "h1", text: "Atividades"
  end

  test "should create atividade" do
    visit atividades_url
    click_on "New atividade"

    fill_in "", with: @atividade.
    fill_in "Id", with: @atividade._id
    fill_in "Bimenstre", with: @atividade.bimenstre
    fill_in "Data", with: @atividade.data
    fill_in "Descrcao", with: @atividade.descrcao
    fill_in "Disciplina", with: @atividade.disciplina
    fill_in "Id", with: @atividade.id
    fill_in "Titulo", with: @atividade.titulo
    click_on "Create Atividade"

    assert_text "Atividade was successfully created"
    click_on "Back"
  end

  test "should update Atividade" do
    visit atividade_url(@atividade)
    click_on "Edit this atividade", match: :first

    fill_in "", with: @atividade.
    fill_in "Id", with: @atividade._id
    fill_in "Bimenstre", with: @atividade.bimenstre
    fill_in "Data", with: @atividade.data
    fill_in "Descrcao", with: @atividade.descrcao
    fill_in "Disciplina", with: @atividade.disciplina
    fill_in "Id", with: @atividade.id
    fill_in "Titulo", with: @atividade.titulo
    click_on "Update Atividade"

    assert_text "Atividade was successfully updated"
    click_on "Back"
  end

  test "should destroy Atividade" do
    visit atividade_url(@atividade)
    click_on "Destroy this atividade", match: :first

    assert_text "Atividade was successfully destroyed"
  end
end
