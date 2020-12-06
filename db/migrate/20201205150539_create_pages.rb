class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.integer :page_type
      t.string :url
      t.string :memo

      t.timestamps
    end
  end
end
