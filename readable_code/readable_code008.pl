use strict;
use warnings;
use feature 'say';

# ブール値を表す変数の定義
my $is_logged_in = 0;
my $has_permission = 1;
# 変数を使用する
if ($is_logged_in) {
    say 'ユーザーはログインしています。'
} else {
    say 'ユーザーはログインしていません。'
}
if ($has_permission) {
    say 'ユーザーは権限を持っています。'
} else {
    say 'ユーザーは権限を持っていません。'
}