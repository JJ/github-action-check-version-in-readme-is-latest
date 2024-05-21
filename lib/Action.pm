package Action;

use Git;

use parent Exporter;

use v5.14;

our @EXPORT_OK = qw(getRepo getLastTag);

sub getRepo() {
  return $ENV{'GITHUB_REPOSITORY'};
}


sub getLastTag() {
  my @tags = Git::command_oneline('tag');
  say @tags;
  return pop @tags;
}
