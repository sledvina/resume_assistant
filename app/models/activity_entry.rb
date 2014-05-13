class ActivityEntry < ActiveRecord::Base
  belongs_to :resume
  validates :position, presence: true
  validates :organization, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  
end
