use strict;
use warnings;
use feature 'say';
use autodie;

my $filename = 'readable_code032.pl';
open my $fh, '<', $filename;
while (my $line = <$fh>) {
    chomp $line;
    say "読み取った行：$line";
}
close $fh;