class Course < ActiveRecord::Base
  validates :title, :description, :cost, :user, presence: true
  validates :cost, numericality: true
  belongs_to :user
end
