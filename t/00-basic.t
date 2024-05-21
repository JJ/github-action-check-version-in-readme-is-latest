# -*- mode: cperl -*-

use Test::More;
use lib qw(../lib ./lib);
use Action qw(getRepo);

is ( getRepo(), "JJ/github-action-check-version-in-readme-is-latest" );

done_testing();
