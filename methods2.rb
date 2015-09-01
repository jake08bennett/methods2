module Methods2
	
	# TODO - write elevenish?
	def elevenish(num)
		divided = num % 11
		if divided == 1 
			return true
		elsif divided == 0
			return true
		else 
			return false
		end
	end

	# TODO - write ice_cream_party?
	def icecream_party(candy, ice)
		if ice < 5 && candy < 5
			return 0
		elsif ice < 5 || candy < 5
			return 1
		elsif ice >= 5 && candy >= 5
			return 2
		else
			return 0 
		end
	end
	# TODO - write successful_squirrel_party?
	def successful_squirrel_party?(num, weekend)
		if weekend
			if num >= 40
				true
			else
				false
			end
		else
			num >= 40 && num <= 60
		end
	end
	
	# TODO - write ticket
	def ticket(a, b, c)
		ab = a + b
		bc = b + c
		ac = a + c

		if ab == 10 || bc == 10 || ac == 10
			return 10
		elsif (ab - 10) == bc || (ab - 10) == ac
			return 5
		else
			return 0
		end
	end

	# TODO - write in_order?

	def in_order?(a, b, c, bOk)
		if b > a || c > b
			return true
		else
			if bOk && b < a
				return true
			else
				return false
			end
		end
	end


	# TODO - write less_by_ten?
	def less_by_ten?(a, b, c)
		if (a + 10) < b || (a + 10) < c || (b + 10) < c || (b + 10) < a || (c + 10) < b || (c + 10) < a
			return true
		else
			return false
		end
	end
	
	# TODO - write fizz_string

	def fizz_string(str)
		if str.start_with?("F") || str.start_with?("F")
			if str.end_with?("B") || str.end_with?("b")
				return "FizzBuzz"
			else
				return "Fizz"
			end
		elsif str.start_with?("B") || str.start_with?("b")
			return "Buzz"
		end
	end





	# TODO - write first_last_six?
	def first_last_six?(arr)
		if arr[0] == 6 || arr[-1] == 6
			return true
		else
			return false
		end
	end


	# TODO - write rotate_left

	# TODO - write double23?
end