class Category < ActiveRecord::Base
  has_many :todos

  validates :name, presence: true
end
