use strict;
use warnings;
use feature 'say';

my $matrix =[ [1, 2, 3], [4, 5, 6], [7, 8, 9] ];
say "中央の要素：" . $matrix->[1][1];
foreach my $row (@$matrix) {
    foreach my $element (@$row) {
        print $element;
    }
    say "";
}