class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new #if a guest user
    
    if user.role? :admin
      can :manage, :all
    else 
        if user.role? :subsc
        can :show, User, :id => user.id
        can :manage, Message, :user_id => user.id 
        end
    end
  end
end