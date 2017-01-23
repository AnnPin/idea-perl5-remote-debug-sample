#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "Content-Type: text/html; charset=utf-8\n\n";
print "<html>\n";
print "<head><title>Remote debugging sample</title></head>\n";
print "<body>\n";
print "<p>n 番目のフィボナッチ数計算</p>\n";
print "<form action='result.pl' method='post'>\n";
print "<p> n : <input type='number' name='n'></p>\n";
print "<p><input type='submit' value='Run'></p>\n";
print "</form>\n";
print "</body>\n";
print "</html>\n";
exit;