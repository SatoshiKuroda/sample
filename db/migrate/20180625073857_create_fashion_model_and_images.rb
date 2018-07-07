class CreateFashionModelAndImages < ActiveRecord::Migration[5.2]

  def change
    create_table :fashion_model_and_images do |t|
      t.references :fashion_model, foreign_key: true
      t.references :image,         foreign_key: true
      t.timestamps
     end
  end
end
