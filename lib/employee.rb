class Employee < ActiveRecord::Base
  belongs_to :store
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

  before_create :set_password
  # before_save fires for both create and update actions
  # before_create fires only for the create action
  # after_create requires the password be set with an update action 

  private
    def set_password
      charset = Array('A'..'Z') + Array('a'..'z')
      self.password = Array.new(8) { charset.sample }.join
    end
end
