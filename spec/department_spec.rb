require './lib/department'
require './lib/employee'

describe Department do
  let(:customer_service){Department.new("Customer Service")}
  let(:bobbi){Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
  let(:aaron){Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}


  
  it 'exists' do
    expect(customer_service).to be_an_instance_of Department
  end

  it 'has readable attributes' do
    expect(customer_service.name).to eq("Customer Service")
    expect(customer_service.employees).to eq([])
  end

  it 'can hire employees to department' do
    customer_service.hire(bobbi)
    customer_service.hire(aaron)

    expect(customer_service.employees).to eq([bobbi, aaron])
  end

  #comment out for iteration 4
  it 'can add and track expenses' do
    expect(customer_service.expenses).to eq(0)

    customer_service.expense(100)
    customer_service.expense(25)    

    expect(customer_service.expenses).to eq(125)
  end

  #comment in for iteration 4
  # it 'can add and track expenses' do
  #   expect(customer_service.expensed_items).to eq([])
  #   expect(customer_service.total_expenses).to eq(0)

  #   customer_service.expense(bobbi, 50, 'business cards')
  #   customer_service.expense(aaron, 12, 'lunch')    

  #   expect(customer_service.expensed_items.length).to eq(2)
  #   expect(customer_service.expensed_items.first).to be_an_instance_of Expense

  #   expect(customer_service.total_expenses).to eq(62)
  # end

  # it 'can pull expenses by employee' do
  #   customer_service.expense(bobbi, 50, 'business cards')
  #   customer_service.expense(aaron, 12, 'lunch')

  #   expect(customer_service.expenses_by_employee(bobbi).first).to be_an_instance_of Expense
    
  #   business_cards = customer_service.expenses_by_employee(bobbi).first

  #   expect(business_cards.item_name).to eq('business cards')
  # end

end