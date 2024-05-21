package Action;

use Git;

use parent Exporter;

our @EXPORT_OK = qw(getRepo getLastTag);

sub getRepo() {
  return $ENV{'GITHUB_REPOSITORY'};
}


sub getLastTag() {
  my @tags = Git::command_oneline('tag');
  return pop @tags;
}
