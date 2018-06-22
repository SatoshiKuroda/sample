class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :tel
      t.string :address
      t.string :email
      t.integer :role

      t.timestamps
    end
  end
end
