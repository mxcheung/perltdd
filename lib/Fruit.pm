package Fruit;
use strict;
use warnings;
use Amazon::SNS;

    sub new {
        my ( $class, %args ) = @_;
        my $self = \%args;

        send_message();
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
    
    sub send_message {
       my $awsAccessKey =  $ENV{'AWS_ACCESS_KEY'};
       my $awsSecretAccessKey =  $ENV{'AWS_SECRET_ACCESS_KEY'};
       my $awsTopicARN =  $ENV{'AWS_TOPIC_ARN'};
       my $awsSNSServiceURL =  $ENV{'AWS_SNS_SERVICE_URL'};

       my $sns = Amazon::SNS->new({ 'key' => $awsAccessKey, 'secret' => $awsSecretAccessKey });

       # Get/set SNS service url, something like 'http://sns.us-east-1.amazonaws.com'.
       $sns->service($awsSNSServiceURL);


       # create a new topic and publish
#       my $topic = $sns->CreateTopic('perlsns')  or die $sns->error;

       # publish to a known ARN
        my $topic = $sns->GetTopic($awsTopicARN);

        $topic->Publish('My test message 11:11:08', 'My Perl Subject');

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


