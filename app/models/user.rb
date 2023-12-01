class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #  Associations
  belongs_to :user_type
  has_many :city_data, dependent: :destroy

  # Validations
  validates :user_type, presence: true

  # enum user's role and set a default role
  enum role: [:user, :admin, :super_admin]
  after_initialize :set_default_role, :if => :new_record?

  private

  def set_default_role
    self.role ||= :user if new_record?
  end
end
