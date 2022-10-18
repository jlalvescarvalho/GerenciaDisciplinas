require "application_system_test_case"

class DisciplicasTest < ApplicationSystemTestCase
  setup do
    @disciplica = disciplicas(:one)
  end

  test "visiting the index" do
    visit disciplicas_url
    assert_selector "h1", text: "Disciplicas"
  end

  test "should create disciplica" do
    visit disciplicas_url
    click_on "New disciplica"

    fill_in "", with: @disciplica.
    fill_in "Turma", with: @disciplica.Turma
    fill_in "Id", with: @disciplica._id
    fill_in "Anoletivo", with: @disciplica.anoletivo
    fill_in "Id", with: @disciplica.id
    fill_in "Nome", with: @disciplica.nome
    click_on "Create Disciplina"

    assert_text "Disciplina was successfully created"
    click_on "Back"
  end

  test "should update Disciplina" do
    visit disciplica_url(@disciplica)
    click_on "Edit this disciplica", match: :first

    fill_in "", with: @disciplica.
    fill_in "Turma", with: @disciplica.Turma
    fill_in "Id", with: @disciplica._id
    fill_in "Anoletivo", with: @disciplica.anoletivo
    fill_in "Id", with: @disciplica.id
    fill_in "Nome", with: @disciplica.nome
    click_on "Update Disciplina"

    assert_text "Disciplina was successfully updated"
    click_on "Back"
  end

  test "should destroy Disciplina" do
    visit disciplica_url(@disciplica)
    click_on "Destroy this disciplica", match: :first

    assert_text "Disciplina was successfully destroyed"
  end
end
