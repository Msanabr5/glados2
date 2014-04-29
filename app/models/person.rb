class Person <ActiveRecord::Base
  attr_accessible :name, :first_name, :last_name

  has_many :possession_contracts
  has_many :equipment, through: :possession_contracts
  has_many :door_keys
  has_many :doors, through: :door_keys
  has_many :fobs
  has_many :agreement_executions
  has_many :agreements, through: :agreement_executions
  validates :first_name, :last_name, :presence => true

  def name
    "#{self.first_name} #{self.last_name}"
  end
end

