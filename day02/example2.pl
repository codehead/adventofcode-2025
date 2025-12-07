#!/usr/bin/env perl
use lib ('lib');
use MyDefaults;
use Util qw/:all/;
use Day02;

my $solution = Day02::solve2('day02/example.dat');
print "sum=$solution\n";

