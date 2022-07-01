FactoryBot.define do
  factory :order_address do
    postcode { '123-4567' }
    region_id { 1 }
    city { '世田谷区' }
    block { '1-1' }
    #building { '東京ハイツ' }
    phone_number { '09012345678' }
    user_id { 1 }
    item_id { 1 }
  end
end
