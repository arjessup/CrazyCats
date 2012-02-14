class Cat < ActiveRecord::Base
  
  belongs_to :person

  validates_numericality_of :age, :on => :create,
    :greater_than_or_equal_to => 0,
    :less_than_or_equal_to => 30
  
end
