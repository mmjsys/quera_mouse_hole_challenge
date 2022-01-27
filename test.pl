#!/usr/bin/perl
# import libs :
use strict;
use warnings;
#define variable's :
my $input="";
my @list_addrs = [];
my $mouse_addr = 0;
my $home_addr = 0;
my $road_steps = 0;
# get input :
print "input : ";
$input=<>;
chomp($input);
# insert input in list :
@list_addrs = split(" " , $input);
# select items and insert to variable :
$mouse_addr = $list_addrs[0];
$home_addr = $list_addrs[1];
# print output:
if($home_addr == $mouse_addr) {
  print "happy new year .";
}
if($home_addr > $mouse_addr) {
  $road_steps = $home_addr - $mouse_addr;
  $road_steps = abs($road_steps);
  print "R" x $road_steps . "\n";
}
if($home_addr < $mouse_addr) {
  $road_steps = $home_addr - $mouse_addr;
  $road_steps = abs($road_steps);
  print "L" x  $road_steps . "\n";
}