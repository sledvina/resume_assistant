class WorkEntry < ActiveRecord::Base
  belongs_to :resume
  validates :Position, presence: true
  validates :Company, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :resume, presence: true
  
end
