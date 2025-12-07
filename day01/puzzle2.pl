#!/usr/bin/env perl
use lib ('lib');
use MyDefaults;
use Util qw/:all/;
use Day01;

my $pass = Day01::solve2('day01/puzzle1.dat');
print "password=$pass\n";

