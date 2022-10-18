require "application_system_test_case"

class AvaliaTest < ApplicationSystemTestCase
  setup do
    @avalium = avalia(:one)
  end

  test "visiting the index" do
    visit avalia_url
    assert_selector "h1", text: "Avalia"
  end

  test "should create avalium" do
    visit avalia_url
    click_on "New avalium"

    fill_in "", with: @avalium.
    fill_in "Aluno", with: @avalium.Aluno
    fill_in "Atividade", with: @avalium.Atividade
    fill_in "Id", with: @avalium._id
    fill_in "Id", with: @avalium.id
    fill_in "Observacao", with: @avalium.observacao
    fill_in "Pontos", with: @avalium.pontos
    click_on "Create Avalium"

    assert_text "Avalium was successfully created"
    click_on "Back"
  end

  test "should update Avalium" do
    visit avalium_url(@avalium)
    click_on "Edit this avalium", match: :first

    fill_in "", with: @avalium.
    fill_in "Aluno", with: @avalium.Aluno
    fill_in "Atividade", with: @avalium.Atividade
    fill_in "Id", with: @avalium._id
    fill_in "Id", with: @avalium.id
    fill_in "Observacao", with: @avalium.observacao
    fill_in "Pontos", with: @avalium.pontos
    click_on "Update Avalium"

    assert_text "Avalium was successfully updated"
    click_on "Back"
  end

  test "should destroy Avalium" do
    visit avalium_url(@avalium)
    click_on "Destroy this avalium", match: :first

    assert_text "Avalium was successfully destroyed"
  end
end
