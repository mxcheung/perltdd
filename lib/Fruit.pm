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

__END__

=head1 NAME

Fruit.pm - Define Fruit Object - Getters and Setters

=head1 SYNOPSIS

Fruit has name, colour and taste

=head1 DESCRIPTION

Define attributes for Fruit using test driven development

=cut


