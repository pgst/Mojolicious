use strict;
use warnings;
use feature 'say';

# 定数の定義
use constant MAX_RETRY_COUNT => 3;
use constant DATABASE_NAME => 'my_database';

# 定数を使用する
my $retry_count = 0;
while ($retry_count < MAX_RETRY_COUNT) {
    say "Connecting to " . DATABASE_NAME . "...";
    $retry_count++;
}