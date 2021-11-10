class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.boolean :done, null: false
      t.references :todo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
