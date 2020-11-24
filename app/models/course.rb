class Course < ApplicationRecord
  belongs_to :teacher
  has_and_belongs_to_many :students

  def has_enough_students
    self.vagas_ocupadas >= 20
  end
end
