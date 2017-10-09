require "minitest/autorun"

#To compare twos value /boolean
class MyTest < MiniTest::Unit::TestCase
	def test_that_addition_works
		assert_equal 4, 2+2
	end

	#Find item in an array /boolean
	def test_that_array_has_a_value
		my_arr = %w(dog cat frog)
		assert my_arr.include?('cat')
	end

	#Expected 3.14159-3 <= 0.2 /boolean
	def test_assert_delta
		assert_in_delta 3.14159, 3, 0.2
	end

	#Find any character are match
	def test_assert_match
		assert_match /world/, 'hello world'
	end

	#Is variable nil
	def test_nil
		variable = nil
		assert_nil variable
	end

	#Is output to the screen? cannot use puts to print out here /boolean
	def test_output
		assert_output "hello world", nil do
			print 'hello world'
		end
	end

	#Is variable not existed
	def assert_raise
		assert_raises NameError do
			this_variable_doesnt_exist
		end
	end

	def test_respond
		assert_respond_to Array.new, 'include?'
	end
end