class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :store_name
      t.text :review
      t.integer :taste, null: false, default: 0
      t.integer :service, null: false, default: 0
      t.integer :cost, null: false, default: 0
      t.integer :atmosphere, null: false, default: 0
      t.integer :access, null: false, default: 0
      
      t.timestamps
    end
  end
end
