class ActionItemsController < ApplicationController
  def index
    @action_items = ActionItem.all
  end
  
  def new
    @action_item = ActionItem.new
  end
  
  def create
    action_item = ActionItem.new(params[:action_item])
    action_item.origination = Time.now.to_s(:db)
    action_item.save
    redirect_to action_items_path
  end
  
  def edit
    @action_item = ActionItem.find(params[:id])
  end
  
  def update
    action_item = ActionItem.find(params[:id])
    action_item.update_attributes(params[:action_item])
    redirect_to action_items_path
  end
  
  def show
    
  end
end
