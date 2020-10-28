use strict;

my @a = (10, 20, 30);
print (calc_avg(@a));

sub calc_avg {

    my $length = @_;
    my $sum = 0;
    my $num;

    foreach $num (@_){
        $sum += $num;
    }

    return $sum/$length;
}