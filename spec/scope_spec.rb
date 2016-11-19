require_relative '../lib/scope'

describe Scope do 
	it 'makes a valid scope string' do 
		expect(Scope.build_scope_string 2016, 10).to eq '201610'
	end

	it 'makes a valid scope instance' do 
		expect(Scope.make_scope(2016, 10).value).to eq '201610'
	end

	it 'returns true to a valid month' do
		expect(Scope.valid_month? 10).to eq true
	end

	it 'returns false to a invalid month' do
		expect(Scope.valid_month? 13).to eq false
	end

	it 'returns true to a valid year' do
		expect(Scope.valid_year? 2016).to eq true
	end
	
	it 'returns false to a year minor than 2000' do
		expect(Scope.valid_year? 1990).to eq false
	end

	it 'returns false to a year grather than 3000' do
		expect(Scope.valid_year? 3001).to eq false
	end

	it 'returns true to a valid scope' do
		expect(Scope.valid? '201610').to eq true
	end

	it 'returns a valid month' do
		expect(Scope.month '201610').to eq 10
	end

	it 'returns a valid year' do
		expect(Scope.year '201610').to eq 2016
	end

	it 'creates a valid scope instance' do
		expect(Scope.new(201610).class).to eq Scope
	end
end