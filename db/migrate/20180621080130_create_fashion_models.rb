class CreateFashionModels < ActiveRecord::Migration[5.2]
  def change
    create_table :fashion_models do |t|
      t.string :name
      t.string :height
      t.string :bust
      t.string :waist
      t.string :hip
      t.string :gender
      t.references :agency

      t.timestamps
    end
  end
end
