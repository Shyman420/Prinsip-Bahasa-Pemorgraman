checkEvenOddPosNeg n = 
	if (mod n 2) == 0
		then if (n < 0)
			then print "even negative"
			else print "even positive"
	else 
		if (n < 0)
			then print "odd negative"
			else print "odd positive"