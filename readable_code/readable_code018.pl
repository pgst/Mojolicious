use strict;
use warnings;
use feature 'say';

my $filename = 'readable_code017.pl';
open(my $fh, '<', $filename) or die "Can't open file $filename: $!";
while (my $line = <$fh>) {
    say $line;
}
close $fh;