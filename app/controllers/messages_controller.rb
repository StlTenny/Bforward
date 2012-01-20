class MessagesController < AuthorizedController
  before_filter :authenticate_owner!
  load_and_authorize_resource :through => :current_user
  # GET /messages
  # GET /messages.json
  # index, show, new, edit, update, destroy
  
  def index
    @messages = @current_user.messages
  end
  
  def show
    @message = @current_user.messages.find(params[:id])
  end
  
  def new
    @message = @current_user.messages.build 
  end
  
  def create
    @message = @current_user.messages.build(params[id])
    if @message.save
      flash[:notice] = "Successfully Saved Message"
      redirect_to user_url(@message.user_id)
    else
      render :action => :new
    end
  end
  
  def edit
    @message = @Messages.find(params[:id])
  end
  
  def update
    @message = @Messages.find(params[:id])
    if @message.update_attributes(params[:message])
      flash[:notice] = "Successfully updated message."
      redirect_to user_url
    else
      render :action => :edit
    end 
  end
  
  def destroy
    @message = @Messages.find(params[:id])
    @message.destroy
    flash[:notice] = "Successfully destroyed meessage."
    redirect_to user_url(@message.user_id)
  end
end
