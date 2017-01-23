#!/usr/local/bin/perl
use strict;
use warnings FATAL => 'all';
use Fibo;

my $post_data;
read (STDIN, $post_data, $ENV{'CONTENT_LENGTH'});
my $fibo = Fibo->new();
my @t = split(/=/, $post_data);
my $result = $fibo->calc_nth_fibonacci($t[1]);

print "Content-Type: text/html; charset=utf-8\n\n";
print "<html>\n";
print "<head><title>Remote debugging sample</title></head>\n";
print "<body>\n";
print "<h1>答え : $result</h1>\n";
print "</body>\n";
print "</html>\n";
exit;

