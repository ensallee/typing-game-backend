class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :accuracy
      t.string :wpm
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
