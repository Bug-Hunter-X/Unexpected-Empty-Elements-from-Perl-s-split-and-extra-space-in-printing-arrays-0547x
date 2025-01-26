#!/usr/bin/perl
use strict;
use warnings;

my $str = "This  is a test string";
my @arr = grep { length } split /\s+/, $str; #removes empty elements
print join(' ', @arr), "\n"; #prints the array elements without extra spaces

#Explanation
#The grep { length } removes any elements with zero length from the array produced by split.
#The join function joins the elements of the array with a single space, avoiding extra spaces.
#This solution provides a more robust and predictable way to handle the output of the split function.
