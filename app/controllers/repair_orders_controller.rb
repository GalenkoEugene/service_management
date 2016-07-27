class RepairOrdersController < ApplicationController
  before_filter :authenticate_user!

  def orders
  	@repair_orders = RepairOrder.all
  	@claimers = Claimer.all
  	@devices = Device.all
  	@masters = Master.all
  end

  def new
  	@master = Master.new
  end
  def create
  	@master = Master.new(master_params)

    respond_to do |format|
      if @master.save
        format.html { redirect_to new_master_url, notice: 'Мастер был успешно добавден.' }
        format.json { render action: 'new', status: :created, location: @master }
      else
        format.html { render action: 'new' }
        format.json { render json: @master.errors, status: :unprocessable_entity }
      end
	end
  end

def master_params
  params.require(:master).permit(:name, :category)
end

end
