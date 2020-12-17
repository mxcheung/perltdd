package Fruit;
use strict;
use warnings;

    sub new {
        my ( $class, %args ) = @_;
        my $self = \%args;
        bless $self, $class;
    };

    sub set_name {

        my $self = shift;
        $self->{'name'} = shift;
    };

    sub get_name {
        my $self = shift;
        $self->{'name'};
    };
    
    sub set_color {
    
        my $self = shift;
        $self->{'color'} = shift;
    };

    sub get_color {
        my $self = shift;
        $self->{'color'};
    };   

1;
