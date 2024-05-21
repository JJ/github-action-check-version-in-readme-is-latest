# -*- mode: cperl -*-

use Test::More;
use lib qw(../lib ./lib);
use Action qw(getRepo getLastTag);
use v5.14;

is ( getRepo(), "JJ/github-action-check-version-in-readme-is-latest" );
like( getLastTag(), qr/^v/, "Last tag correct format" );

done_testing();
