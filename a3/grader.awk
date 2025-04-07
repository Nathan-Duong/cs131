BEGIN {
	FS = "," # Comma delimiter
	minimum = 99999 # Used to make lowest score work
}

# Function to calculate average grade (assuming 3 grades like grades.csv)
function averageGrade(total) {
	return total / 3
}

NR > 1 { # Skip header
	name = $2
	total = $3 + $4 + $5 
	total_score[name] = total # Store total in associative array (Task 1)
	average = averageGrade(total) # Calculate average for each student (Task 2)
	average_score[name] = average

	# Classify students as pass or fail (Task 2)
	if (average >= 70)
		pass_or_fail[name] = "Pass"
	else
		pass_or_fail[name] = "Fail"
	
	# Track top student (Task 3)
	if (total > max) {
		max = total
		top_student = name
	}
	
	# Track lowest student (Task 3)
	if (total < minimum) {
		minimum = total
		lowest_student = name
	}
}

END {
	# Print for each student (Task 4)
	for (student in total_score) {
		print("Name:",student,", Total:",total_score[student],", Average:",average_score[student],", Status:",pass_or_fail[student])
	}
	# Print top and lowest (Task 5)
	print("Top Student:", top_student, ", Lowest Student:", lowest_student)
}


