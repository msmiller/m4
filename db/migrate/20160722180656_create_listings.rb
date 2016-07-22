class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|

      t.string :name
      t.string :company
      t.string :address
      t.string :state

      t.timestamps
    end
  end
end
