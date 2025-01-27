use strict;
use warnings;
use feature 'say';

my @numbers = (1, 2, 3, 4, 5);
my @doubled = map { $_ * 2 } @numbers;
say "Original: @numbers";
say "Doubled: @doubled";