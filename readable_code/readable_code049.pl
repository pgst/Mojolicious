use strict;
use warnings;
use v5.40;

sub process_file {
    my $filename = shift;
    unless (-e $filename) {
        warn "ファイルが存在しません。: $filename";
        return;
    }
    open my $fh, '<', $filename or do {
        warn "ファイルを開けません。: $filename - $!";
        return;
    };

    while (my $line = <$fh>) {
        chomp $line;
        say "処理中：$line";
    }
    close $fh;
}