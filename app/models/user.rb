class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :password, presence: true, length: {minimum: 5, maximum: 120}, on: :create
  # validates :password, length: {minimum: 5, maximum: 120}, on: :update, allow_blank: true
  belongs_to :role

  accepts_nested_attributes_for :role, allow_destroy: true

  after_create :set_default_user_role


  def set_default_user_role
    return unless self.role.nil?
    self.role  = Role.where(name: "Waiter").first # waiter role
    self.save
  end

  def has_role?(role_name)
    self.role == Role.where(name: role_name).first
  end

  def add_role(role_name)
    role = Role.where(name: role_name).first
    self.role = role unless role.blank?
  end

end
