class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :current_password, :profile_name
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true,
                           uniqueness: true,
                           format: {
                             with: /a-zA-Z0-9_-/,
                             message: "must be formatted correctly"
                           }
         
  has_many :statuses
  has_one  :quiz
  
  
  def full_name
    first_name + " " + last_name
  end
end
