#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

my $sum = 0;

foreach my $tmp (1..1000) {
  if ( $tmp % 3 == 0 or $tmp % 5 == 0 ) {
    $sum += $tmp;
  }
}

print "$sum\n";


1;
