# 値渡し時の挙動
my $number1 = 10;
my $number1_dup = $number1; # コピーを代入
$number1_dup *= 100;
print "もとのデータ: $number1\n"; # => 10
print "渡し先のデータ: $number1_dup\n"; # => 1000

# 参照渡し時の挙動
my $number2 = 10;
my $number2_ref = \$number2; # リファレンスを代入
$$number2_ref *= 100;
print "もとのデータ: $number2\n"; # => 1000
print "渡し先のデータ: $$number2_ref\n"; # => 1000