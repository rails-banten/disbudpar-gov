class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :title, null: false
    	t.text	 :content, null: false
    	t.string :slug

    	t.datetime  :published_at
    	t.datetime  :deleted_at

    	t.integer  :user_id
    	t.integer  :parent_id

		t.timestamps
    end

    add_index :articles, :slug
    add_index :articles, :user_id

  end
end
