json.extract! student, :id, :matricula, :nome, :sexo, :estado_civil, :filiacao, :endereco, :telefone, :email, :esporte_preferido, :escolaridade, :naturalidade, :cidade, :uf, :pais, :cargo, :cpf, :identidade, :created_at, :updated_at
json.url student_url(student, format: :json)
