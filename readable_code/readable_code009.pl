use strict;
use warnings;
use feature 'say';

# ユーザーデータを取得する関数
sub get_user_data {
    my ($user_id) = @_;
    return {
        name => 'Alice',
        age => 30,
    };
}
# 入力を処理する関数
sub process_input {
    my ($input) = @_;
    chomp $input;
    return lc $input;
}