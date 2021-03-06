class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :unit
      t.bigint :price
      t.bigint :total
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
