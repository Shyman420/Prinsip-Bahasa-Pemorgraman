cekPrime 1 = False
cekPrime 2 = True
cekPrime n = if (length [factor | factor <- [2..n-1], mod n factor == 0]) > 0
	--(length [x | x <- [2..n-1], mod n x == 0]) condition ini memeriksa berapa banyak
	--elemen pada array tersebut. Sedangkan elemen array tersebut adalah faktor dari bilangan n
	--sehingga apabila terdapat 1 atau lebih faktor dari bilangan n, maka bilangan tersebut bukanlah
	--bilangan prima.
	then False
	else True
