require 'rails_helper'

#RSpec.describe "repair_orders/orders.html.erb", type: :view do
#  pending "add some examples to (or delete) #{__FILE__}"
#end

describe "RepairOrders" do

  describe "index" do

    it "should have the content 'Заказ'" do
      visit '/repair_orders'
      expect(page).to have_content('Заказ')
    end
  end
end