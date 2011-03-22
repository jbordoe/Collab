#!/usr/local/bin/perl
use LWP::Simple;
use JSON::XS;
use Data::Dumper;
use strict;
#####################################################################
# Simple processor - J.Bordoe & K.Olesiejuk
#####################################################################
my $data_file=$ARGV[0].".json";
open(DAT, $data_file) || die("Could not open .json file!");
my @raw=<DAT>;
close(DAT);

my $best = 0;
my $url;

my $str = decode_json($raw[0]);
my $query = $str ->{'query'};

my %domains = %{$str->{'session'}};

#iterate thru pages, get longest viewed
while (my ($key, $value) = each %domains)
{
	my %pages = %{$value->{'pages'}};
	while(my ($k, $v) = each %pages)
	{
		print "$k :: ".$v->{'time'}."\n";
		if($v->{'time'} > $best)
		{
			$best = $v->{'time'};
			$url = $k;
		}
	}
} 
print "\n BEST RATED PAGE:\n    ".$url."\n        in total, about ".($best/1000)." seconds were spent actively viewing this page\n";

#output results
print "\noutputting results...";
 open (MYFILE, ">C:\\xampp\\htdocs\\Collab\\q-".$query.'.txt');
 	print MYFILE $url;
 close (MYFILE);
print "...fin.\n"