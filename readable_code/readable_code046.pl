use strict;
use warnings;
use v5.40;

my $input;
my $valid_input = 0;

while (!$valid_input) {
    print '1から10までの数値を入力してください:';
    chomp($input = <STDIN>);
    if ($input =~ /^\d+$/ && $input >= 1 && $input <= 10) {
        $valid_input = 1;
    } else {
        say '無効な値が入力されました。もう一度入力してください。';
    }
}
say "入力された数値: $input";