class CreateEmployyes < ActiveRecord::Migration[7.0]
  def change
    create_table :employyes do |t|
      t.string :name, limit: 45, null: false
      t.string :last_name, limit: 45, null: false
      t.string :document, limit: 45, null: false, unique: true
      t.string :mobile, limit: 10, null: false, unique: true
      t.float :salary
      t.boolean :enable

      t.timestamps
    end
  end
end
