use strict;
use warnings;
use feature 'say';
use v5.10;

sub evaluate_number {
    my $num = shift;
    given ($num) {
        when ($_ < 0) {
            say "負の数です。";
        }
        when ($_ == 0) {
            say "ゼロです。";
        }
        when ($_ > 0 && $_ <= 10) {
            say "1から10の間の数です。";
        }
        default {
            say "10より大きい数です。";
        }
    }
}
evaluate_number(5);