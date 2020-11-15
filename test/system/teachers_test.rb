require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "creating a Teacher" do
    visit teachers_url
    click_on "New Teacher"

    fill_in "Cargo", with: @teacher.cargo
    fill_in "Cidade", with: @teacher.cidade
    fill_in "Cpf", with: @teacher.cpf
    fill_in "Email", with: @teacher.email
    fill_in "Endereco", with: @teacher.endereco
    fill_in "Escolaridade", with: @teacher.escolaridade
    fill_in "Estado civil", with: @teacher.estado_civil
    fill_in "Filiacao", with: @teacher.filiacao
    fill_in "Identidade", with: @teacher.identidade
    fill_in "Matricula", with: @teacher.matricula
    fill_in "Naturalidade", with: @teacher.naturalidade
    fill_in "Nome", with: @teacher.nome
    fill_in "Pais", with: @teacher.pais
    fill_in "Sexo", with: @teacher.sexo
    fill_in "Telefone", with: @teacher.telefone
    fill_in "Titulacao", with: @teacher.titulacao
    fill_in "Uf", with: @teacher.uf
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "updating a Teacher" do
    visit teachers_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @teacher.cargo
    fill_in "Cidade", with: @teacher.cidade
    fill_in "Cpf", with: @teacher.cpf
    fill_in "Email", with: @teacher.email
    fill_in "Endereco", with: @teacher.endereco
    fill_in "Escolaridade", with: @teacher.escolaridade
    fill_in "Estado civil", with: @teacher.estado_civil
    fill_in "Filiacao", with: @teacher.filiacao
    fill_in "Identidade", with: @teacher.identidade
    fill_in "Matricula", with: @teacher.matricula
    fill_in "Naturalidade", with: @teacher.naturalidade
    fill_in "Nome", with: @teacher.nome
    fill_in "Pais", with: @teacher.pais
    fill_in "Sexo", with: @teacher.sexo
    fill_in "Telefone", with: @teacher.telefone
    fill_in "Titulacao", with: @teacher.titulacao
    fill_in "Uf", with: @teacher.uf
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher" do
    visit teachers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher was successfully destroyed"
  end
end
