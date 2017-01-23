#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print("Hello, remote debugging!\n");

my $res = multiply(8, 8);
print("$res\n");

sub multiply {
    my $n = shift;
    my $times = shift;
    my $acc = 0;

    for (my $i = 0; $i < $times; $i++) {
        $acc += $n;
    }

    return $acc;
}

