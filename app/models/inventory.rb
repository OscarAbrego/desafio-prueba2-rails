class Inventory < ActiveRecord::Base
  belongs_to :category
  has_one :work, dependent: :delete
  validate :valid_size

  after_destroy :log_destroy


  scope :size_x, -> (x) {
    where(:size => x)
  }

  def valid_size
    if self.size.nil? || self.size <= 0
      errors.add(:size, 'is an imposible value,  lower than zero')
    end
  end

  private

  def log_destroy
    Log.create(description:"La pieza con serial #{self.serial} ah sido borrada")
  end

end
