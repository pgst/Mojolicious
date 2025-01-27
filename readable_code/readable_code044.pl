use strict;
use warnings;
use v5.40;

my $age = 30;
my $membership_status = 'silver';

sub is_eligible_for_discount {
    my ($age, $membership_status) = @_;
    return ($age >= 65 || $membership_status eq 'gold');
}

if (is_eligible_for_discount($age, $membership_status)) {
    say "割引を適用します。";
} else {
    say "割引を適用できません。";
}