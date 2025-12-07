#!/usr/bin/env perl
use lib ('lib');
use MyDefaults;
use Util qw/:all/;
use Day02;

my $solution = Day02::solve2('day02/puzzle1.dat');
print "sum=$solution\n";

