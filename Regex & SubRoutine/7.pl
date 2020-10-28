use strict;

my $web = <stdin>;

if ($web =~ m/^(?!.*[ ])www.+\w.+(com|id|net)$/i){
    print "valid";
}
else{
    print "invalid";
}