class CreateAlunos < ActiveRecord::Migration[7.0]
  def change
    create_table :alunos do |t|
      t.string :id
      t.string :nome
      t.string :turma
      t.references :turma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
