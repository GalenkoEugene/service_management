class RepairOrdersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
  	@repair_orders = RepairOrder.all
  	@claimers = Claimer.all
  	@devices = Device.all
  	@masters = Master.all
  end
  
  def new
    @master_options = Master.all.map{|u| [ u.name, u.id ] } #for select list
  	@repair_order = RepairOrder.new
    @repair_order.build_claimer
    @repair_order.build_device
  end
  
  def create
    @repair_order = RepairOrder.new(repair_order_params)

    respond_to do |format|
      if @repair_order.save
        format.html { redirect_to new_master_url, notice: 'Заказ успешно добавден.' }
        format.json { render action: 'new', status: :created, location: @repair_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @repair_order.errors, status: :unprocessable_entity }
      end
    end
  end

  def repair_order_params
    params.require(:repair_order).permit(:claimer_id, :master_id, :description, 
      claimer_attributes: [:fio, :phone, :email, :city, :adress], 
      device_attributes: [:model, :serial_number, :brand, :device_type, :defect, :accessories, :appearences])
  end

end
