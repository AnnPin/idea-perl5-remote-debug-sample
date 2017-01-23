package Fibo;
use strict;
use warnings FATAL => 'all';

sub new {
    my ($class, %args) = @_;
    bless \%args, $class;
}

sub calc_nth_fibonacci {
    my $self = shift;  # 第一引数は self
    my $n = shift;     # 第二引数.

    my @table = ();

    if ($n < 1) {
        return -1;
    }

    for (my $i = 1; $i <= $n; $i++) {
        if ($i == 1 or $i == 2) {
            @table = (@table, 1)
        } else {
            @table = (@table, $table[$i - 2] + $table[$i - 3]);
        }
    }

    return $table[scalar(@table) - 1];
}

1;