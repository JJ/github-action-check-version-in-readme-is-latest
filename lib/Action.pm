package Action;

use Git;

use parent Exporter;

use v5.14;

our @EXPORT_OK = qw(getRepo getLastTag getReadme);

sub getRepo() {
  return $ENV{'GITHUB_REPOSITORY'};
}


sub getLastTag() {
  my $repo = Git->repository (Directory => '.');
  my @tags = $repo->command('tag','--sort=taggerdate');
  return pop @tags;
}

sub getReadme() {
  my $readmemd = "README.md";
  open my $fh, '<', $readmemd or die;
  $/ = undef;
  my $readme = <$fh>;
  close $fh;
  return $readme;
}
