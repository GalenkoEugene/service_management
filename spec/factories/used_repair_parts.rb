FactoryGirl.define do
  factory :used_repair_part do
    code "MyString"
    qtty 1
    description "MyString"
    price 1.5
    stack_id 1
    repair_orders_id 1
  end
end
