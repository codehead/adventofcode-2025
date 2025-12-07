package Day01;
use MyDefaults;
use Util qw/:all/;
use parent 'Day';
use POSIX qw/floor/;

sub setup($file) {
  return [
    read_lines($file, sub($line) {
      if ($line =~ m/^([LR])(\d+)$/) {
        return ($1 eq 'L' ? -1 : 1) * $2;
      }
      warn("Can't parse line [$line]");
    })
  ];
}

sub solve($file) {
  my $ops = setup($file);
  my $pass = 0;
  my $pos = 50;
  print "- The dial starts by pointing at $pos\n";
  foreach my $op (@$ops) {
    $pos = ($pos + $op) % 100;
    ++$pass if ($pos == 0);
    print "- The dial is rotated "
      . ($op < 0 ? "L" : "R") . abs($op)
      . " to point at "
      . ($pos ? $pos : "*$pos*")
      . "\n"
    ;
  }
  return $pass;
}

sub solve2($file) {
  my $ops = setup($file);
  my $pass = 0;
  my $pos = 50;
  print "- The dial starts by pointing at $pos\n";
  foreach my $op (@$ops) {
    my $s = $pos;
    $pos = ($pos + $op);
    # print "* op=$op pos=[$s]->[$pos]\n";
    my $switch = sign($s) == sign($pos) ? 0 : sign($s) ? 1 : 0;
    my $clicked = $switch + floor(abs($pos / 100));
    $pass += $clicked;
    $pos = $pos % 100;
    print "- The dial is rotated "
      . ($op < 0 ? "L" : "R") . abs($op)
      . " to point at "
      . ($pos ? $pos : "*$pos*")
      . (
      $clicked && ($pos != 0) ? (
        "; during this rotation, it points at 0 *"
          . (
          $clicked == 1 ? "once" :
            $clicked == 2 ? "twice" :
              "$clicked times"
        ) . "*"
      ) : "")
      . "\n"
    ;
  }
  return $pass;
}

sub sign($n) {
  return $n <=> 0;
}

1;
