require './lib/department'
require './lib/employee'
require './lib/budget'

describe Budget do
  let(:fy1213){Budget.new("FY2012-2013")}
  let(:customer_service){Department.new("Customer Service")}
  let(:bobbi){Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})}
  let(:aaron){Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})}
  let(:marketing){Department.new("Marketing")}
  let(:tori){Employee.new({name: "Tori Enyart", age: "23", salary: "5000"})}
  let(:foster){Employee.new({name: "Foster Denney", age: "26", salary: "7500"})}
  let(:hannah){Employee.new({name: "Hannah Provost", age: "27", salary: "6000"})}
  let(:hr){Department.new("Human Resources")}
  let(:kelly){Employee.new({name: "Kelly Kapoor", age: "32", salary: "7000"})}

  before(:each) do
    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    marketing.hire(tori)
    marketing.hire(foster)
    marketing.hire(hannah)
    hr.hire(kelly)

    customer_service.expense(200)
    marketing.expense(15000)
    hr.expense(350)
  end

  it 'exists' do
    expect(fy1213).to be_an_instance_of Budget
  end

  it 'has readable attributes' do
    expect(fy1213.year).to eq("FY2012-2013")
  end

  it 'can add and list all departments' do
    expect(fy1213.departments).to eq([])

    fy1213.add_department(customer_service)
    fy1213.add_department(marketing)
    fy1213.add_department(hr)

    expect(fy1213.departments).to eq([customer_service, marketing, hr])
  end

  it 'can list departments w/ expenses less than $500' do
    fy1213.add_department(customer_service)
    fy1213.add_department(marketing)
    fy1213.add_department(hr)

    expect(fy1213.expenses_less_than(500)).to eq([customer_service, hr])
  end

  it 'can list employee salaries' do
    fy1213.add_department(customer_service)
    fy1213.add_department(marketing)
    fy1213.add_department(hr)

    expect(fy1213.salaries).to eq({
      "Aaron Tanaka" => 90000,
      "Bobbi Jaeger" => 100000,
      "Foster Denney" => 7500,
      "Hannah Provost" => 6000,
      "Kelly Kapoor" => 7000,
      "Tori Enyart" => 5000
    })
  end

end