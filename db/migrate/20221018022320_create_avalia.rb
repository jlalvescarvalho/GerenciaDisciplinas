class CreateAvalia < ActiveRecord::Migration[7.0]
  def change
    create_table :avalia do |t|
      t.string :id
      t.string :pontos
      t.string :observacao
      t.string :Atividade
      t.references :atividade, null: false, foreign_key: true
      t.string :Aluno
      t.references :aluno, null: false, foreign_key: true

      t.timestamps
    end
  end
end
