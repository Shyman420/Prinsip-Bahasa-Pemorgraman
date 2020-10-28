use strict;

my $sn = <stdin>;

if($sn =~ m/^(?!.*[ ])\d{2}-\w{5}-\w{6}$/){
    print "valid";
}
else{
    print "invalid";
}