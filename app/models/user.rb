class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :role, :remember_me
  
  #Setup relationship between user and email
  has_many :messages, :dependent => :destroy
  
  ROLES = %w[admin subsc guest]
  #named_scope :with_role, lambda { |role| { :conditions => ["role = ?", role] }}
  
  def role?(role)
    return self.role == role.to_s
  end
  
  def admin?
    return self.role == "admin"
  end
end
