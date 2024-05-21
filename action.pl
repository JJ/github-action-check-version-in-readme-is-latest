#!/usr/bin/env perl

use v5.14;

sub getRepo() {
  return $ENV{'GITHUB_ACTION_REPOSITORY'};
}


my $repoName = getRepo();
