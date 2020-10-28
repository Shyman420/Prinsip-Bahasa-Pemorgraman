use strict;

my @array = qw(Alamat aku Alamat04 Handphone 03 02 z9);

my @sortedArray = sortAlphToNum(@array);

print "@sortedArray ";

sub sortAlphToNum {
    my @num;
    my @alp;
    my $string;

    foreach $string (@_) {
        if($string =~ m/^\d/){
            push (@num, $string);
        }
        elsif($string =~ m/^\w/){
            push (@alp, $string);
        }
    }

    @num = sort{$a <=> $b}@num;
    @alp = sort{$a cmp $b}@alp;
    push(@alp, @num);
    return @alp;
}