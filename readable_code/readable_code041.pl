use strict;
use warnings;
use v5.40;

sub process_data {
    my ($data) = @_;
    return unless defined $data && @$data;  # $dataが未定義または空の場合は処理を終了するガード条件
    foreach my $item (@$data) {
        next unless is_valid($item);  # $itemが無効な場合は次の要素を処理するガード条件
        process_item($item);
    }
}

sub is_valid {
    my ($item) = @_;
    return $item =~ /^\d+$/;
}

sub process_item {
    my ($item) = @_;
    say "処理中: $item";
}