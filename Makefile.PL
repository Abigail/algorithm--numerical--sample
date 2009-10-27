#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use ExtUtils::MakeMaker;

my %args = (
    NAME                 =>  'Algorithm::Numerical::Sample',
    VERSION_FROM         =>  'lib/Algorithm/Numerical/Sample.pm',
    ABSTRACT_FROM        =>  'lib/Algorithm/Numerical/Sample.pm',
    MIN_PERL_VERSION     =>   5.006,
    AUTHOR               =>  'Abigail <cpan@abigail.be>',
    LICENSE              =>  'mit',
    META_MERGE           => {
        resources        => {
            repository   => 
                'git://github.com/Abigail/algorithm--numerical--sample.git',
        },
        keywords         => [qw [algorithm numerical sample]],
    },
);

my %filter = (
    MIN_PERL_VERSION     => '6.48',
    LICENSE              => '6.48',
    META_MERGE           => '6.46',
    AUTHOR               => '6.07',
    ABSTRACT_FROM        => '6.07',
);

delete $args {$_} for grep {defined $filter {$_} &&
                            $ExtUtils::MakeMaker::VERSION lt $filter {$_}}
                            keys %args;


WriteMakefile %args;

__END__
