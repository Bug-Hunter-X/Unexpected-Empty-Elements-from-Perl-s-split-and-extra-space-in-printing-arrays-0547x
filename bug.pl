#!/usr/bin/perl
use strict;
use warnings;

my $str = "This is a test string";
my @arr = split /\s+/, $str; #splits on one or more whitespace characters
print "@arr\n";

#The problem is that the split function can sometimes produce empty elements 
#if there are consecutive whitespace characters.
#For example, if the input string is "This  is a test string", the split function
#will produce the following array: ("This", "", "is", "a", "test", "string").
#This can cause problems if you're not careful.

#Another subtle bug is the use of print "@arr\n"; which will add extra space between elements
#This is because the @arr is expanded within double quotes. This space could cause issue in string comparison
#or further processing. 
