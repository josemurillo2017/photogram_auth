class Like < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  #Validations
  validates :user_id, presence: true, uniqueness: {scope: :user}
  validates :photo_id, presence: true
end
