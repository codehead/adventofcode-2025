#!/usr/bin/env perl
use lib ('lib');
use MyDefaults;
use Util qw/:all/;
use Day01;

$pass = Day01::solve2('day01/example.dat');
print "password(0x434C49434B)=$pass\n";


