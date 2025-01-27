use strict;
use warnings;
use feature 'say';

my @users = (
    { name => 'Alice', age => 30 },
    { name => 'Bob', age => 40 },
    { name => 'Chris', age => 50 },
);
my @array = (1, 2, 3, 4, 5);

# ユーザーリストを処理するループ
foreach my $user(@users) {
    # 各ユーザーに対して処理を行う
    process_user($user);
}
for my $index (0..$#array) {
    # 各インデックスに対して処理を行う
    process_index($index);
}