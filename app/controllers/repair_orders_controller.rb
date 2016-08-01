class RepairOrdersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
  	@repair_orders = RepairOrder.all
  	@claimers = Claimer.all
  	@devices = Device.all
  	@masters = Master.all
  end
  
  def new
  	@repair_order = RepairOrder.new
    @claimer = Claimer.new
  end



end
