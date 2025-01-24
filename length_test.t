use Test::More;

is length("perl"), 4, "length test";
# is length(undef), 0, "undef test";

like(
    "perl-5.22.0.tar.gz",
    qr/perl-5\.\d+\.\d+\.tar\.gz/,
    "archive name test"
);

cmp_ok(1 / 10, '<', 0.11, "division test");

sub create_person {
    return { name => $_[0], age => $_[1] }
}
is_deeply(
    create_person( "James", "30" ),
    { age => "30", name => "James"},
    "person object test"
);

done_testing;