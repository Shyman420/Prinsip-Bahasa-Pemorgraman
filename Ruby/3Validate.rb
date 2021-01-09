# testing 101 words by deleting "#" below
# myString= " 2021 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vehicula, velit et vehicula hendrerit, tellus purus vulputate metus, a finibus tortor velit at risus. Aenean interdum turpis risus, nec fermentum metus molestie vel. Nulla in diam turpis. Donec eu lacus vel orci cursus mattis at a ligula. Phasellus odio nisi, maximus ac felis eu, dapibus rhoncus nisl. Nulla ex dolor, ultrices et ullamcorper ac, eleifend porta metus. Mauris porttitor aliquet libero, eget porta nunc scelerisque at. Etiam interdum efficitur velit. Etiam maximus, nulla semper sollicitudin tincidunt, erat ex eleifend neque, vel gravida erat nibh eu dolor. Donec gravida risus eget felis."

# get user's input
# chomp for removing '\n'
myString = gets.chomp
puts ("Your string is '#{myString}'")

# validate whether the string is empty or not
puts ("String cannot be empty") if myString.empty? == true

# validate whether the string include word "2021" or not
puts ("String containing the word '2021' ") if myString.include?("2021") == true

# splitting each word from myString and put them to array arrString
arrString = myString.split(//)
puts ("String has more than 100 words") if arrString.length > 100