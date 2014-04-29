class Resume < ActiveRecord::Base
  belongs_to :user
  has_many :educational_entries
  before_save { self.email = email.downcase }
  validates :resume_name, presence: true
  validates :user_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }
  validates :phone, presence: true  
                    
end
