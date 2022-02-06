class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_initialize :set_defaults

  has_many :posts

  validates_presence_of :first_name, :last_name
  validates :username, uniqueness: true, presence: true, format: { with: /\A[a-zA-Z]+([a-zA-Z]|\d)*\Z/ }

  private

  def set_defaults
    self.role ||= "student"
  end
end
