package Action;

use parent Exporter;

our @EXPORT_OK = qw(getRepo);

sub getRepo() {
  return $ENV{'GITHUB_REPOSITORY'};
}



