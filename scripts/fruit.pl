#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

use FindBin;
use lib "$FindBin::Bin/../lib";
use Data::Dumper;

use Fruit;


main();

sub main {
    my $fruit = Fruit->new( 'name' => 'apple', 'color' => 'red' );
    my $colour = $fruit->get_color();
    print "Fruit colour: $colour";
    print Dumper($fruit);
}


