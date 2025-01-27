use strict;
use warnings;
use feature 'say';

my @users = ('Alice', 'Bob', 'Chris');
foreach my $user (@users) {
    say "Hello, ${user}!";
}
my $user_count = scalar @users;
# say "There are ${user_count} users.";
say "There are $user_count users.";