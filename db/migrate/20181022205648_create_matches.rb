class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :home
      t.references :visitor
      t.integer :score1
      t.integer :score2
      t.string :winner

      t.timestamps
    end
  end
end
