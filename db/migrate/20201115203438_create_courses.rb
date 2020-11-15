class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :codigo
      t.text :descricao
      t.integer :horas_aula
      t.integer :vagas_total
      t.integer :vagas_ocupadas
      t.date :data_inicio
      t.date :data_fim
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
