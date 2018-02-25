class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.belongs_to :imageable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :pictures, [:imageable_id, :imageable_type]
  end
end
