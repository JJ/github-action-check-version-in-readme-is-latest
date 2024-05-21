#!/usr/bin/env perl

use v5.14;

use lib qw(lib);
use Action qw(getRepo getLastTag getReadme);

my $repoName = getRepo();

my $lastTag  = getLastTag();

my $readme = getReadme();

my $repoPlusVersion = $repoName."@".$lastTag;
say $repoPlusVersion;

my $isVersion = $readme =~ m/\Q$repoPlusVersion/;

say "is version $isVersion";

exit(1) unless $isVersion;



