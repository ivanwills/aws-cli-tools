#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

BEGIN {
    use_ok( 'AWS::CLI::Tools' );
}

diag( "Testing AWS::CLI::Tools $AWS::CLI::Tools::VERSION, Perl $], $^X" );
done_testing();
