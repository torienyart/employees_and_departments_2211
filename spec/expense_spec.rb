require './lib/expense'
require './lib/employee'
require './lib/department'



describe Expense do
  let(:bobbi){Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})}
  let(:customer_service){Department.new("Customer Service")}
  let(:business_cards){customer_service.expense(bobbi, 50, 'business cards')}

  before(:each) do
    customer_service.hire(bobbi)
  end

  it 'exists and has readable attributes' do 
    expect(business_cards).to be_an_instance_of Expense
    expect(business_cards.item_name).to eq('business cards')
    expect(business_cards.spender).to eq(bobbi)
    expect(business_cards.cost).to eq(50)
  end

end