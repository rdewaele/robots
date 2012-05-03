#!/usr/bin/perl

use common::sense;
use LWP::UserAgent;

my $lejos_url_src = "http://sourceforge.net/projects/lejos/files/lejos-NXJ-source/0.9.1beta/leJOS_NXJ_0.9.1beta-2_source.tar.gz/download";
my $lejos_url_ex  = "http://sourceforge.net/projects/lejos/files/lejos-NXJ-source/0.9.1beta/leJOS_NXJ_0.9.1beta_samples.zip/download";
my $ua = LWP::UserAgent->new;

sub SF_getfilename { return $ua->head(shift)->previous->header("Content-Disposition") =~ m!"(.*)"!g; }

$ua->mirror($lejos_url_src, SF_getfilename($lejos_url_src));
$ua->mirror($lejos_url_ex, SF_getfilename($lejos_url_ex));
