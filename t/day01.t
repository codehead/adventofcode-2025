use Test::More;
use Day01;

is Day01::solve("day01/example.dat"), 3, "example";
is Day01::solve("day01/puzzle1.dat"), 1043, "puzzle 1";
is Day01::solve2("day01/example.dat"), 6, "example 2";
is Day01::solve2("day01/puzzle1.dat"), 5963, "puzzle 2";
done_testing;
