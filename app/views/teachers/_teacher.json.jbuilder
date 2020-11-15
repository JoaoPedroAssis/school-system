json.extract! teacher, :id, :matricula, :nome, :sexo, :estado_civil, :filiacao, :titulacao, :endereco, :telefone, :cpf, :identidade, :naturalidade, :cidade, :uf, :pais, :email, :escolaridade, :cargo, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
