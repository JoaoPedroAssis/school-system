require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Cargo", with: @student.cargo
    fill_in "Cidade", with: @student.cidade
    fill_in "Cpf", with: @student.cpf
    fill_in "Email", with: @student.email
    fill_in "Endereco", with: @student.endereco
    fill_in "Escolaridade", with: @student.escolaridade
    fill_in "Esporte preferido", with: @student.esporte_preferido
    fill_in "Estado civil", with: @student.estado_civil
    fill_in "Filiacao", with: @student.filiacao
    fill_in "Identidade", with: @student.identidade
    fill_in "Matricula", with: @student.matricula
    fill_in "Naturalidade", with: @student.naturalidade
    fill_in "Nome", with: @student.nome
    fill_in "Pais", with: @student.pais
    fill_in "Sexo", with: @student.sexo
    fill_in "Telefone", with: @student.telefone
    fill_in "Uf", with: @student.uf
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @student.cargo
    fill_in "Cidade", with: @student.cidade
    fill_in "Cpf", with: @student.cpf
    fill_in "Email", with: @student.email
    fill_in "Endereco", with: @student.endereco
    fill_in "Escolaridade", with: @student.escolaridade
    fill_in "Esporte preferido", with: @student.esporte_preferido
    fill_in "Estado civil", with: @student.estado_civil
    fill_in "Filiacao", with: @student.filiacao
    fill_in "Identidade", with: @student.identidade
    fill_in "Matricula", with: @student.matricula
    fill_in "Naturalidade", with: @student.naturalidade
    fill_in "Nome", with: @student.nome
    fill_in "Pais", with: @student.pais
    fill_in "Sexo", with: @student.sexo
    fill_in "Telefone", with: @student.telefone
    fill_in "Uf", with: @student.uf
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
