# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.037.
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Compare schema of two DBI databases",
  "AUTHOR" => "perlancar <perlancar\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "DBIx-Diff-Schema",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.010001",
  "NAME" => "DBIx::Diff::Schema",
  "PREREQ_PM" => {
    "DBI" => 0,
    "Log::Any::IfLOG" => 0,
    "Scalar::Util::Numeric" => 0,
    "experimental" => 0
  },
  "TEST_REQUIRES" => {
    "DBD::SQLite" => 0,
    "File::Spec" => 0,
    "File::chdir" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::Exception" => 0,
    "Test::More" => "0.98"
  },
  "VERSION" => "0.07",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "DBD::SQLite" => 0,
  "DBI" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "File::chdir" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Log::Any::IfLOG" => 0,
  "Scalar::Util::Numeric" => 0,
  "Test::Exception" => 0,
  "Test::More" => "0.98",
  "experimental" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
