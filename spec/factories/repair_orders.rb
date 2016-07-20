FactoryGirl.define do
  factory :repair_order do
    tb_climers_id 1
    tb_devices_id 1
    tb_Masters_id 1
    tb_status_order_id 1
    type_order false
    date_create "2016-07-21 01:05:33"
    date_complite "2016-07-21 01:05:33"
    date_return "2016-07-21 01:05:33"
    date_dead_line "2016-07-21 01:05:33"
    description "MyString"
    waranty_period "2016-07-21 01:05:33"
    date_purchase "2016-07-21 01:05:33"
  end
end
