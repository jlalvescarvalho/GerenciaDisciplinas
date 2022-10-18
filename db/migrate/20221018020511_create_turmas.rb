class CreateTurmas < ActiveRecord::Migration[7.0]
  def change
    create_table :turmas do |t|
      t.string :id
      t.string :letra
      t.string :ano
      t.string :anoLetivo

      t.timestamps
    end
  end
end
