use strict;

my @a = (1, 2, 3);
my @b = (4, 5, 6);
print (join(" ", addTwoArrays(@a, @b)),"\n");

sub addTwoArrays {
    my $length = @_;
    my @aRef = @_[0 .. $length/2 - 1];
    my @bRef = @_[$length/2 .. $length];
    my @sum;

    for (my $i = 0 ; $i < $length/2 ; $i++) {

        push(@sum, @aRef[$i] + @bRef[$i]);

    }

    return @sum;
}