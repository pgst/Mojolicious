use strict;
use warnings;
use feature 'say';

sub check_user_age {
    my $user_age = shift;
    my $minimum_age = 18;
    if ($user_age >= $minimum_age) {
        say 'ユーザーは成人です。';
    } else {
        say 'ユーザーは未成年です。';
    }
}

check_user_age(20);