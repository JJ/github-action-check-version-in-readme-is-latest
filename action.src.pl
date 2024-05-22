#!/usr/bin/env perl

use v5.14;

use lib qw(lib);
use Action qw(getRepo getLastTag getReadme);

my $repoName = getRepo();

my $lastTag  = getLastTag();

my $readme = getReadme();

my $repoPlusVersion = $repoName."@".$lastTag;

say "Version is $repoPlusVersion";

say "Index repo", index($repoName,$readme);
say "Index version", index($repoName,$lastTag);

say "-----------";
say $readme;

exit(1) unless index($repoPlusVersion,$readme) > 0;



