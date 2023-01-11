class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :name, null: false, limit: 45, unique: true
      t.string :color
      t.boolean :enable

      t.timestamps
    end
  end
end
