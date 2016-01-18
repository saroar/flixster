class User < ActiveRecord::Base
  enum role: %i(user vip admin)
  after_initialize :set_default_role, if: :new_record?
  validates :email, :password, presence: true
  has_many :courses

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
    :confirmable, :recoverable, :rememberable, :trackable,
    :validatable
end
