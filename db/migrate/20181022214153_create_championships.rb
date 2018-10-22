class CreateChampionships < ActiveRecord::Migration[5.2]
  def change
    create_table :championships do |t|
      t.string :name
      t.integer :modality

      t.timestamps
    end
  end
end
