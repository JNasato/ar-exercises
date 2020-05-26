class Store < ActiveRecord::Base
  has_many :employees

  validates_associated :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  before_destroy :stop_destroy

  private
    def stop_destroy
      if self.employees.size > 0 
        return false
      end
    end
end
