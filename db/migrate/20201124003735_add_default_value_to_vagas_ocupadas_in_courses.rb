class AddDefaultValueToVagasOcupadasInCourses < ActiveRecord::Migration[5.2]
  def change
    change_column :courses, :vagas_ocupadas, :integer, default: 0
  end
end
