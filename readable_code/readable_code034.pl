use strict;
use warnings;
# use feature 'say';
use v5.40;

sub count_calls {
    state $count = 0;
    $count++;
    say "この関数は$count回呼ばれました。";
}
count_calls();
count_calls();
count_calls();