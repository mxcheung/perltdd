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

## Links
https://metacpan.org/pod/Test::More
https://perlmaven.com/pod-plain-old-documentation-of-perl
https://medium.com/@KerrySheldon/ec2-exercise-1-1-host-a-static-webpage-9732b91c78ef
