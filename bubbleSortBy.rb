# #bubble_sort_by => A bubble sort function that takes a block as well
# as the array to be sorted. The block (can be anything) but in this 
# case will describe what action to take on the current to array 
# elements (self[i] and self[i + 1]

def bubble_sort_by arrayTosort
	
	swappedflag = true
	arraySize = arrayTosort.length
	
	while swappedflag do
		swappedflag = false
		(arraySize - 1).times do |i|
			result = yield(arrayTosort[i], arrayTosort[i + 1])
			if result > 0
				arrayTosort[i], arrayTosort[i + 1] = arrayTosort[i + 1], arrayTosort[i]		
				swappedflag = true
			end
		end		
	end
	puts arrayTosort
end
	

bubble_sort_by(["one", "two", "three", "four", "five", "six", "seven", "eight","nine", "ten"]){|left, right| left.length - right.length}
bubble_sort_by([1,4,2,3,5,8,5,0]){|left, right| left - right}


			
