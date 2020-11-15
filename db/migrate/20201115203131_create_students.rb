class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :matricula
      t.string :nome
      t.string :sexo
      t.string :estado_civil
      t.string :filiacao
      t.string :endereco
      t.string :telefone
      t.string :email
      t.string :esporte_preferido
      t.string :escolaridade
      t.string :naturalidade
      t.string :cidade
      t.string :uf
      t.string :pais
      t.string :cargo
      t.string :cpf
      t.string :identidade

      t.timestamps
    end
  end
end
