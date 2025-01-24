use strict;
use warnings;
use v5.40;
use experimental 'class';

class Person {
    field $name :param;
    method name { $name }
    method say_hi { say "Hi, I'm $name." }
}

my $p = Person->new(name => 'takatsuka');
$p->say_hi;