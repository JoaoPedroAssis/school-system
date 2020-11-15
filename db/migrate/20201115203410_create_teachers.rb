class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :matricula
      t.string :nome
      t.string :sexo
      t.string :estado_civil
      t.string :filiacao
      t.string :titulacao
      t.string :endereco
      t.string :telefone
      t.string :cpf
      t.string :identidade
      t.string :naturalidade
      t.string :cidade
      t.string :uf
      t.string :pais
      t.string :email
      t.string :escolaridade
      t.string :cargo

      t.timestamps
    end
  end
end
