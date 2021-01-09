def palindrome(a)
    #create reversed a
    b = []
    for i in ((a.length) - 1).downto(0)
        b.push(a[i])
    end

    #compare a to b
    #ignore case
    if a.map(&:downcase) == b.map(&:downcase)
        puts "#{a} is a palindrome"
    else
        puts "#{a} is not a palindrome"
    end
end   

#get user's input
string = gets.chomp.split(//)
palindrome(string)