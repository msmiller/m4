class CreateAttribs < ActiveRecord::Migration[5.0]
  def change
    create_table :attribs do |t|

      t.integer :listing_id
      t.string :key
      t.text :value

      t.timestamps
    end
  end
end
