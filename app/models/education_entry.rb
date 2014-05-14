class EducationEntry < ActiveRecord::Base
  belongs_to :resume
  validates :school, presence: true
  validates :graduation_date, presence: true
  validates :resume, presence: true
  
end
