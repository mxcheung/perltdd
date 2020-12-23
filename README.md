# perltdd
perl test driven development


# Objectives
- Write sample perl module Math.pm
- Write sample perl test script to unit test perl module Math.t
- Use github and git bash to checkin sample code
- Troubleshoot missing perl libraries and install via cpan

# Step by Step
 - create a new repository in github
 -  checkout  in ec2 instance  
       git clone  https://github.com/mxcheung/perltdd.git
 - create lib and t folders
    [ec2-user@ip-172-31-44-23 perltdd]$ ls
    
    README.md
    
    [ec2-user@ip-172-31-44-23 perltdd]$ mkdir -p lib
    
    [ec2-user@ip-172-31-44-23 perltdd]$ mkdir -p t/lib
       
  - Copy sample code
     
      https://github.com/mxcheung/prove/blob/master/lib/Math.pm
      
      https://github.com/mxcheung/prove/blob/master/t/lib/Math.t
      
   - check in source code to git
      [ec2-user@ip-172-31-44-23 perltdd]$ git add .
      
       [ec2-user@ip-172-31-44-23 perltdd]$ git commit -m "My first perl tdd"

      [ec2-user@ip-172-31-44-23 perltdd]$ git push origin master

# Troubleshoot
[ec2-user@ip-172-31-44-23 t]$ perl Math.t
Can't locate Test/More.pm in @INC (@INC contains: /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at Math.t line 5.
BEGIN failed--compilation aborted at Math.t line 5.

# Install missing perl library
https://metacpan.org/pod/Test::More  <== install instructions
     
     perl -MCPAN -e shell
     
     install Test::Simple

/home/ec2-user/tdd/mc/perltdd/t/lib

[ec2-user@ip-172-31-44-23 lib]$ perl Math.t

ok 1

ok 2

Tests were run but no plan was declared and done_testing() was not seen.

# pod2html
pod2html Fruit.pm > /var/www/html/perl/lib/Fruit.html

http://ec2-54-79-195-173.ap-southeast-2.compute.amazonaws.com/perl/lib/Fruit.html

# perl cgi

```
  [ec2-user@ip-172-31-44-23 cgi]$ ls -ltr
  total 28
  -rwxrwxrwx 1 ec2-user ec2-user 778 Dec 18 06:58 movie.cgi
  -rwxr-xr-x 1 ec2-user ec2-user 170 Dec 18 07:28 hello.cgi
  -rwxr-xr-x 1 ec2-user ec2-user 170 Dec 18 07:29 env.cgi
  -rwxr-xr-x 1 ec2-user ec2-user  90 Dec 18 09:38 test.cgi
  -rwxr-xr-x 1 ec2-user ec2-user 293 Dec 18 09:47 perl-cgi-form.cgi
  -rwxr-xr-x 1 ec2-user ec2-user 247 Dec 18 10:21 list-names.cgi
  -rwxr-xr-x 1 ec2-user ec2-user 468 Dec 18 10:28 simple.cgi
  [ec2-user@ip-172-31-44-23 cgi]$ pwd
  /var/www/cgi-bin/cgi
```

http://ec2-54-79-195-173.ap-southeast-2.compute.amazonaws.com/cgi-bin/cgi/env.cgi

http://ec2-54-79-195-173.ap-southeast-2.compute.amazonaws.com/cgi-bin/cgi/simple.cgi

http://ec2-54-79-195-173.ap-southeast-2.compute.amazonaws.com/cgi-bin/cgi/list-names.cgi

## Perl Web form

http://ec2-54-79-195-173.ap-southeast-2.compute.amazonaws.com/perl/html/mysport.html

http://ec2-54-79-195-173.ap-southeast-2.compute.amazonaws.com/cgi-bin/cgi/mysport.cgi

## Dynamic DNS

http://aws20201219.ddns.net/perl/html/myfruit.html

http://aws20201219.ddns.net/cgi-bin/cgi/myfruit.cgi

 ssh -i "cheungm-mqtt.pem" ec2-user@aws20201219.ddns.net

 ssh -i "cheungm-mqtt.pem" ec2-user@ec2-3-25-127-73.ap-southeast-2.compute.amazonaws.com

## Perl email

https://ap-southeast-2.console.aws.amazon.com/ses/home?region=ap-southeast-2#smtp-settings

https://gist.githubusercontent.com/jeffjohnson9046/3488642c7fa8d4083386e1e69b5526d2/raw/9fde606358fbe21dd1e0c5381acd495bde5cff96/aws-email-sender.pl

## Perl Postgres

psql --host=cheungm-postgres.c9biwtr4pgjt.ap-southeast-2.rds.amazonaws.com --port=5432 --username=postgres --password --dbname=postgres

https://www.guru99.com/postgresql-create-database.html

[ec2-user@ip-172-31-44-23 scripts]$ psql --host=cheungm-postgres.c9biwtr4pgjt.ap-southeast-2.rds.amazonaws.com --port=5432 --username=postgres --password --dbname=postgres
Password:

psql (12.5, server 12.4)
SSL connection (protocol: TLSv1.2, cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=> CREATE DATABASE guru99;
CREATE DATABASE

postgres=>

postgres=> CREATE DATABASE testdb;
CREATE DATABASE
postgres=>



## Links
https://metacpan.org/pod/Test::More

https://perlmaven.com/pod-plain-old-documentation-of-perl

https://medium.com/@KerrySheldon/ec2-exercise-1-1-host-a-static-webpage-9732b91c78ef

http://perltraining.com.au/notes/perlcgi.pdf

https://www.geeksforgeeks.org/perl-cgi-programming/

https://my.noip.com/#!/dynamic-dns

https://metacpan.org/pod/Amazon::SNS

https://www.guru99.com/postgresql-create-database.html

