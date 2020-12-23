#!/usr/bin/perl

use DBI;
use strict;

my $driver   = "Pg"; 
#my $database = "testdb";
my $host =  $ENV{'AWS_POSTGRES_HOST'};
my $database =  $ENV{'AWS_POSTGRES_DATABASE'};
my $port = $ENV{'AWS_POSTGRES_PORT'};
my $dsn = "DBI:$driver:dbname=$database;host=$host;port=$port";
#my $userid = "postgres";
my $userid = $ENV{'AWS_POSTGRES_HOST'};
my $password = $ENV{'AWS_POSTGRES_PASSWORD'};
my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 })
   or die $DBI::errstr;
print "Opened database successfully\n";

my $stmt = qq(CREATE TABLE COMPANY
      (ID INT PRIMARY KEY     NOT NULL,
      NAME           TEXT    NOT NULL,
      AGE            INT     NOT NULL,
      ADDRESS        CHAR(50),
      SALARY         REAL););
my $rv = $dbh->do($stmt);
if($rv < 0) {
   print $DBI::errstr;
} else {
   print "Table created successfully\n";
}
$dbh->disconnect();
