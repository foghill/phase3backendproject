require 'active_record'

class Todo < ActiveRecord::Base
    # Other code and validations, if any
    belongs_to :category
  end
  
