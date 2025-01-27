use strict;
use warnings;
use v5.40;

sub process_numbers {
    my (@numbers) = @_;
    foreach my $number (@numbers) {
        next if $number < 0;
        last if $number > 100;
        say "Processing number: $number";
    }
}
process_numbers(1, 2, 3, 4, -5, 99, 88, 103);