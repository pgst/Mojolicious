use strict;
use warnings;

my $money = 1;
for my $day (1 .. 31) {
    $money *= 2;
    print "$day 日後は $money 円\n";
}
print "最終的に $money 円になりました\n";