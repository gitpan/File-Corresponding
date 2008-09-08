use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'File::Corresponding',
    license             => 'perl',
    dist_author         => 'Johan Lindström <johanl[ÄT]DarSerMan.com>',
    dist_version_from   => 'lib/File/Corresponding.pm',
    requires => {
        'Carp'                       => 0,
        'Data::Dumper'               => 0,
        'File::Basename'             => 0,
        'Getopt::Long'               => 0,
        'List::MoreUtils'            => 0,
        'Moose'                      => 0.57,
        'Moose::Autobox'             => 0.08,
        'MooseX::Types::Path::Class' => 0,
        'Path::Class'                => 0.11,
        'Pod::Usage'                 => 0,
        'Test::Differences'          => 0,
        'Test::Exception'            => 0,
        'Test::More'                 => 0,
        'File::HomeDir'              => 0,
        'File::chdir'                => 0,
        'YAML::Tiny'                 => 0,
    },
    script_files => [
        "bin/corresponding_file",
       ],  
    add_to_cleanup      => [ 'File-Corresponding-*' ],
    create_readme => 1,
    create_makefile_pl => 'traditional',
);
$builder->create_build_script();
