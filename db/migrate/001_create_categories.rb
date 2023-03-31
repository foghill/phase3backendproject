# db/migrate/001_create_categories.rb
class CreateCategories < ActiveRecord::Migration[6.0]
    def change
      create_table :categories do |t|
        t.string :name
        t.timestamps
      end
    end
  end