def bubblesort arrayTosort
	
	swappedflag = true
	arraySize = arrayTosort.length
	
	while flag do
		swappedflag = false
		(arraySize - 1).times do |i|
			if arrayTosort[i] > arrayTosort[i + 1]
				arrayToSort[i], arrayTosort[i + 1] = arrayToSort[i + 1], arrayTosort[i]
				swappedflag = true
			end
		end		
	end
	arrayTosort
end
	
bubblesort([1,4,2,3])
bubblesort([1,3,5,2,8,5,9])
			
#arrayTosort.each_index do |i|
#	if arrayTosort[i] > arrayTosort[i + 1]
#		arrayToSort[i], arrayTosort[i + 1] = arrayToSort[i + 1], arrayTosort[i]
#		swappedflag = true
#	end