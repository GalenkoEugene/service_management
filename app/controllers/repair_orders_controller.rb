class RepairOrdersController < ApplicationController
  before_filter :authenticate_user!

  def orders
  	@repair_orders = RepairOrder.all
  	@claimers = Claimer.all
  	@devices = Device.all
  	@masters = Master.all
  end
end
