# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_15_203454) do

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "codigo"
    t.text "descricao"
    t.integer "horas_aula"
    t.integer "vagas_total"
    t.integer "vagas_ocupadas"
    t.date "data_inicio"
    t.date "data_fim"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "courses_students", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "course_id"
    t.index ["course_id"], name: "index_courses_students_on_course_id"
    t.index ["student_id"], name: "index_courses_students_on_student_id"
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "matricula"
    t.string "nome"
    t.string "sexo"
    t.string "estado_civil"
    t.string "filiacao"
    t.string "endereco"
    t.string "telefone"
    t.string "email"
    t.string "esporte_preferido"
    t.string "escolaridade"
    t.string "naturalidade"
    t.string "cidade"
    t.string "uf"
    t.string "pais"
    t.string "cargo"
    t.string "cpf"
    t.string "identidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "matricula"
    t.string "nome"
    t.string "sexo"
    t.string "estado_civil"
    t.string "filiacao"
    t.string "titulacao"
    t.string "endereco"
    t.string "telefone"
    t.string "cpf"
    t.string "identidade"
    t.string "naturalidade"
    t.string "cidade"
    t.string "uf"
    t.string "pais"
    t.string "email"
    t.string "escolaridade"
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "teachers"
  add_foreign_key "courses_students", "courses"
  add_foreign_key "courses_students", "students"
end
