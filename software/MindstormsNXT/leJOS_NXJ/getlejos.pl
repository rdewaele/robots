#!/usr/bin/perl

use common::sense;
use LWP::UserAgent;

my $lejos_url = "http://sourceforge.net/projects/lejos/files/latest/download";
my $ua = LWP::UserAgent->new;

sub SF_getfilename { return $ua->head(shift)->previous->header("Content-Disposition") =~ m!"(.*)"!g; }

$ua->mirror($lejos_url, SF_getfilename($lejos_url));
