#!/usr/bin/perl

use strict; 
use CGI ':standard'; 

use FindBin;
use lib "$FindBin::Bin/../../lib";
use Data::Dumper;

use Fruit;

my $fruit = Fruit->new( 'name' =>  param('name'), 'color' => param('colour') );

my $name = $fruit->get_name();
my $colour = $fruit->get_color(); 
my @tastes = param('taste'); 

my $list; 

if (@tastes) 
{ 
	$list = join ', ', @tastes; 
} 
else
{ 
	$list = 'Null'; 
} 

print header, 
start_html(-title=>$name), 
h1("Fruit :: $name"), 
h3 p('You have Submitted the following Data:'), 
h4 table(Tr(td('Name:'), 
h4 td($name)), 
h4 Tr(td('Colour:'), 
h4 td($colour)), 
h4 Tr(td('Tastes:'), 
h4 td($list))), 
end_html; 

