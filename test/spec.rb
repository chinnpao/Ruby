require 'minitest/autorun'
require 'minitest/spec'

describe 'MyTests' do
	before do
		puts "Test are beginning"
	end

	it "add 2 + 2" do
		(2+2).must_equal 4
	end

	it "includes a cat" do
		%w(dog cat frog).must_include('cat')
	end

	it "must be a Fixnum" do
		(2+2).must_be_instance_of Fixnum
	end

	it "should raise an error" do
		arr = []
		lambda { arr.hello }.must_raise NoMethodError
	end
end