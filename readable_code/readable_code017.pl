use strict;
use warnings;
use feature 'say';

my @numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
my @even_numbers = grep { $_ % 2 == 0 } @numbers;
say "偶数：@even_numbers";