require 'rails_helper'

#RSpec.describe "repair_orders/orders.html.erb", type: :view do
#  pending "add some examples to (or delete) #{__FILE__}"
#end

describe "RepairOrders" do

  describe "orders" do

    it "should have the content 'RepairOrders#orders'" do
      visit '/repair_orders/orders'
      expect(page).to have_content('RepairOrders#orders')
    end
  end
end