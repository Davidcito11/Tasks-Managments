class CreateEnterprises < ActiveRecord::Migration[7.0]
  def change
    create_table :enterprises do |t|
      t.string :nit, null: false, unique: true, limit: 45
      t.string :address, null: false, limit: 45
      t.string :mobile, null: false, unique: true, limit: 45
      t.boolean :enable 

      t.timestamps
    end
  end
end
