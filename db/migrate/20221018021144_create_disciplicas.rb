class CreateDisciplicas < ActiveRecord::Migration[7.0]
  def change
    create_table :disciplicas do |t|
      t.string :id
      t.string :nome
      t.string :anoletivo
      t.string :Turma
      t.references :turma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
