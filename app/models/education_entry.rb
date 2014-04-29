class EducationEntry < ActiveRecord::Base
  belongs_to :entry
  validates :school, presence: true
  validates :graduation_date, presence: true
end
