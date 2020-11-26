use strict;

#result
my $total;

#input a and b
my $a = <stdin>;
my $b = <stdin>;

#sprintf() for returning fromatted decimal ($a * $b) to binary to $bin 
my $bin = sprintf ("%b", ($a*$b));

#splits each number to array
my @bits = split(//, $bin);

#sum all values in array
foreach (@bits){
    $total += $_;
}

print $total;