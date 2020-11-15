json.extract! course, :id, :codigo, :descricao, :horas_aula, :vagas_total, :vagas_ocupadas, :data_inicio, :data_fim, :teacher_id, :created_at, :updated_at
json.url course_url(course, format: :json)
