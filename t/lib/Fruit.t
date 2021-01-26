use strict;
use warnings;
use 5.010;

use Test::More;
use FindBin;
use lib "$FindBin::Bin/../../lib";
use Data::Dumper;

use Fruit;

main();

sub main {
    test_object_creation();
    test_attributes();
    test_getters_and_setters();
}

sub test_object_creation {
    note('Test Object Creation');
    my $obj = Fruit->new( 'name' => 'Apple', 'color' => 'red' );
    isa_ok( $obj, 'Fruit' );
    is( ref($obj), 'Fruit', "Reference Type is Fruit." );
}

sub test_attributes {
   note('Test attributes');
   my ($actual, $exp);
   my $obj = Fruit->new( 'name' => 'apple', 'color' => 'red' );
   $actual = $obj->get_color();
   $exp = 'red';
   is( $actual, $exp, 'Test Fruit colour');
   $actual = $obj->get_name();
   $exp = 'apple';
   is( $actual, $exp, 'Test Fruit name');
   #print Dumper($actual);
}

sub test_getters_and_setters {
   note('Test getters and setters');
   my ($actual, $exp);
   my $obj = Fruit->new( 'name' => 'apple', 'color' => 'red' );
   $obj->set_color('blue)
   $actual = $obj->get_color();
   $exp = 'blue';
   is( $actual, $exp, 'Test Fruit colour');
}


done_testing();
