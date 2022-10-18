class CreateAtividades < ActiveRecord::Migration[7.0]
  def change
    create_table :atividades do |t|
      t.string :id
      t.string :titulo
      t.string :descrcao
      t.string :bimenstre
      t.string :data
      t.string :disciplina
      t.references :disciplina, null: false, foreign_key: true

      t.timestamps
    end
  end
end
