class Review < ApplicationRecord
  validates :text, :doctor_id, presence: true  
  belongs_to :doctor
end
