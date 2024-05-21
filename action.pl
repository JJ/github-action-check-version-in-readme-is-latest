#!/usr/bin/env perl

use v5.14;

use lib qw(lib);
use Action qw(getRepo);

my $repoName = getRepo();

my $lastTag  = getLastTag();

say "$repoName $lastTag";


