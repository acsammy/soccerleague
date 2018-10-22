class AddChampionshipRefToMatch < ActiveRecord::Migration[5.2]
  def change
    add_reference :matches, :championship, foreign_key: true
  end
end
