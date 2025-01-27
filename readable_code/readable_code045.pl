use strict;
use warnings;
use v5.40;

print "操作を選択してください (add/subtract/multiply/divide): ";
chomp(my $operation = <STDIN>);
my %operations = (
    add => sub { $_[0] + $_[1] },
    subtract => sub { $_[0] - $_[1] },
    multiply => sub { $_[0] * $_[1] },
    divide => sub { $_[1] != 0 ? $_[0] / $_[1] :"エラー：0で除算" },
);

if (exists $operations{$operation}) {
    print "2つの数値を入力してください: ";
    chomp(my $first_number = <STDIN>);
    chomp(my $second_number = <STDIN>);
    my $result = $operations{$operation}->($first_number, $second_number);
    say "結果: $result";
} else {
    say "無効な操作です。";
}