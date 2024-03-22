class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.text :name
      t.text :meaning
      t.references :dictionary, null: false, foreign_key: true

      t.timestamps
    end
    add_index :words, [:dictionary_id, :created_at]
  end
end
