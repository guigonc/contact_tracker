class CreatePageViews < ActiveRecord::Migration
  def change
    create_table :page_views do |t|
      t.string :path
      t.string :hash_identity

      t.timestamps null: false
    end
  end
end
