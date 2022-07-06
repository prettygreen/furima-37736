FactoryBot.define do
  factory :order_address do
    postcode { '123-4567' }
    region_id { 2 }
    city { '世田谷区' }
    block { '1-1' }
    building { '東京ハイツ' }
    phone_number { '09012345678' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
