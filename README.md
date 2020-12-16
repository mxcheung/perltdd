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
    [ec2-user@ip-172-31-44-23 perltdd]$ mkdir lib
    [ec2-user@ip-172-31-44-23 perltdd]$ mkdir t
       


# Troubleshoot
[ec2-user@ip-172-31-44-23 t]$ perl Math.t
Can't locate Test/More.pm in @INC (@INC contains: /usr/local/lib64/perl5 /usr/local/share/perl5 /usr/lib64/perl5/vendor_perl /usr/share/perl5/vendor_perl /usr/lib64/perl5 /usr/share/perl5 .) at Math.t line 5.
BEGIN failed--compilation aborted at Math.t line 5.

## Links
https://metacpan.org/pod/Test::More
