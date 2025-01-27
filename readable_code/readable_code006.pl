use strict;
use warnings;
use feature 'say';

my $user_input = <STDIN>;
chomp $user_input;
my $processed_data = lc $user_input;
$processed_data =~ s/\s+/_/g;
say "Processed inpupt: $processed_data";