use strict;

my $input = <stdin>;

if ($input =~ m/(?!.*[ ])(?=.*\d)(?=.*\W)(?=.*[a-z])(?=.*[A-Z]).{10,}/){
    print "valid";
}
else{
    print "invalid";
}
