use Test::More;
use Day02;

is Day02::solve("day02/example.dat"), 1227775554, "example";
is Day02::solve("day02/puzzle1.dat"), 53420042388, "puzzle 1";
is Day02::solve2("day02/example.dat"), 4174379265, "example 2";
is Day02::solve2("day02/puzzle1.dat"), 69553832684, "puzzle 2";
done_testing;
