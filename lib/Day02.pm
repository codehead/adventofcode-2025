package Day02;
use MyDefaults;
use Util qw/:all/;
use parent 'Day';

sub setup($file) {
  return [
    read_lines($file, sub($line) {
      return map {[ split(/-/, $_) ]} split(/,/, $line);
    })
  ];
}

sub solve($file) {
  my $ranges = setup($file);
  my $sum = 0;
  foreach my $range (@{$ranges}) {
    my ($min, $max) = @{$range};
    print "- $min-$max\n";
    for (my $i = $min; $i <= $max; ++$i) {
      my $l = length($i);
      next if ($l % 2 == 1);
      if (substr($i, 0, $l / 2) eq substr($i, $l / 2)) {
        print "  $i is invalid\n";
        $sum += $i;
      }
    }
  }
  return $sum;
}

1;
