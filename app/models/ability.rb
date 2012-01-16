class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new #if a guest user
    
    if user.role? :admin
      can :manage, :all
    else if user.role? :subsc
      can :create, :message
      can :read. :message, Message do |message|
        message.try(:message) == user 
    end
  end
end