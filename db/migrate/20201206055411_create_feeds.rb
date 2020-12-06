class CreateFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :feeds do |t|
      t.date :pub_date
      t.text :content
      t.string :title
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
