#!/usr/bin/env perl
use lib ('lib');
use MyDefaults;
use Util qw/:all/;
use Day01;

my $pass = Day01::solve('day01/example.dat');
print "password=$pass\n";

