# db/migrate/003_seed_categories.rb
class SeedCategories < ActiveRecord::Migration[6.0]
    def up
      categories = [
        { name: "Work" },
        { name: "Personal" },
        { name: "Shopping" },
        { name: "Health" },
        { name: "Travel" }
      ]
  
      categories.each do |category|
        Category.create(category)
      end
    end
  
    def down
      categories = ["Work", "Personal", "Shopping", "Health", "Travel"]
  
      categories.each do |category_name|
        Category.find_by(name: category_name)&.destroy
      end
    end
  end
  