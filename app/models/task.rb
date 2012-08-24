class Task < ActiveRecord::Base
  attr_accessible :finished, :name
  validates :name, presence: true, :length => { within: 2..3330 }

  scope :unfinished, lambda { where 'finished =?', false }
end
