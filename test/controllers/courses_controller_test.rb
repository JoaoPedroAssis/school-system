require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { codigo: @course.codigo, data_fim: @course.data_fim, data_inicio: @course.data_inicio, descricao: @course.descricao, horas_aula: @course.horas_aula, teacher_id: @course.teacher_id, vagas_ocupadas: @course.vagas_ocupadas, vagas_total: @course.vagas_total } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { codigo: @course.codigo, data_fim: @course.data_fim, data_inicio: @course.data_inicio, descricao: @course.descricao, horas_aula: @course.horas_aula, teacher_id: @course.teacher_id, vagas_ocupadas: @course.vagas_ocupadas, vagas_total: @course.vagas_total } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
