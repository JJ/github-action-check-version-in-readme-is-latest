# -*- mode: cperl -*-

use Test::More;
use lib qw(../lib ./lib);
use CheckVersion qw(getRepo getLastTag getReadme);
use v5.14;

my $repo = getRepo();
is ( $repo, "JJ/github-action-check-version-in-readme-is-latest" );

my $lastTag = getLastTag();
like( $lastTag, qr/^v/, "Last tag correct format" );

my $readme = getReadme();
like( $readme, qr/^#/, "Readme read correctly" );

like( $readme, qr/$repo/ );
like( $readme, qr/$lastTag/ );

done_testing();
