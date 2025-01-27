use strict;
use warnings;
use feature 'say';

sub check_file_validity {
    my $finename = shift;
    my $is_valid = 0;
    if (-e $finename && -r $finename) {
        $is_valid = 1;
    }
    if ($is_valid) {
        say 'ファイルは有効です。';
    } else {
        say 'ファイルは無効です。';
    }
}
check_file_validity('readable_code011.pl');