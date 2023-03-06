class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
     t.string :user_id
     t.string :breed
     t.string :image_url
     t.timestamps 
    end
  end
end
