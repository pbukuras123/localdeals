class CreateSpecials < ActiveRecord::Migration[6.1]
  def change
    create_table :specials do |t|
      t.string :day
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
