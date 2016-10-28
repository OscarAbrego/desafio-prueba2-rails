class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work
  validate :valid_size


  def valid_size
    if self.size.nil? || self.size <= 0
      errors.add(:size, 'is an imposible value,  lower than zero')
    end
  end
end
