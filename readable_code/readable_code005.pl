use strict;
use warnings;
use feature 'say';

my @fruits = qw(apple banana cherry);
my $search = 'banana';
# if ($search ~~ @fruits) {
if (grep { $_ eq $search } @fruits) {
    say "Found $search";
} else {
    say "Not found $search";
}