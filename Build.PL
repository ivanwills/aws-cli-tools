use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name       => 'AWS::CLI::Tools',
	license           => 'perl',
	dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
	dist_version_from => 'lib/AWS/CLI/Tools.pm',
	requires          => {
		'perl'             => 5.008,
	},
	build_requires => {
		'Test::More'     => 0,
		'Test::Warnings' => 0,
	},
	add_to_cleanup     => [ 'AWS-CLI-Tools-*' ],
	create_license     => 1,
	meta_merge => {
		resources => {
			repository => 'git://github.com/ivanwills/AWS-CLI-Tools.git',
			bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=AWS::CLI::Tools',
		},
	},
);

$builder->create_build_script();
