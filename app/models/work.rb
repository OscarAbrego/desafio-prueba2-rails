class Work < ActiveRecord::Base
  belongs_to :user
  belongs_to :inventory

  validate :user_valid

  scope :last_five, -> {
    last(5)
  }
  scope :no_inventory, -> {
    where(:inventory => nil)
  }
  def user_valid
    if self.user_id.nil?
      errors.add(:user_id, 'does not exist')
    else
      if User.where(:id => self.user_id).size == 0
        errors.add(:users_id, 'must exist')
      end
    end
  end
end
