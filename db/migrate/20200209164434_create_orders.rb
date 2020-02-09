class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :code
      t.text :des_from
      t.text :des_to
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
