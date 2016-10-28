class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work
  validate :valid_size

  scope :size_x, -> (x) {
    where(:size => x)
  }

  def valid_size
    if self.size.nil? || self.size <= 0
      errors.add(:size, 'is an imposible value,  lower than zero')
    end
  end
end
