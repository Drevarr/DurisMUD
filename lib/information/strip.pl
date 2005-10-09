#!/usr/bin/perl

open (FIL, "help.txt");
open (OUT, ">help.out");
while(<FIL>) {
  $_ =~ s/\r//g;
  print OUT $_;
}


