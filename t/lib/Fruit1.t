use strict;
use warnings;
use 5.010;

use Test::More;
use FindBin;
use lib "$FindBin::Bin/../../lib";
use Data::Dumper;

use Fruit1;

main();

sub main {
    test_object_creation();
    test_attributes();
}

sub test_object_creation {
    note('Test Object Creation');
    my $obj = Fruit->new( 'name' => 'Apple', 'color' => 'red', 'taste' => 'sweet' );
    isa_ok( $obj, 'Fruit' );
    is( ref($obj), 'Fruit', "Reference Type is Fruit." );
}

sub test_attributes {
   note('Test attributes');
   my ($actual, $exp);
   my $obj = Fruit->new( 'name' => 'apple', 'color' => 'red', 'taste' => 'sweet' );
   $actual = $obj->get_color();
   $exp = 'red';
   is( $actual, $exp, 'Test Fruit colour');
   $actual = $obj->get_name();
   $exp = 'apple';
   is( $actual, $exp, 'Test Fruit name');
   $actual = $obj->get_taste();
   $exp = 'sweet';
   is( $actual, $exp, 'Test Fruit taste');
   #print Dumper($actual);
}

done_testing();
