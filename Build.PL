use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::NioTV',
    license             => 'perl',
    dist_author         => 'Alec Chen <alec@cpan.org>',
    dist_version_from   => 'lib/WWW/NioTV.pm',
    build_requires => {
        'Test::More'            => 0,
        'WWW::Mechanize'        => 0,
        'HTML::TableExtract'    => 0,
        'HTML::SimpleLinkExtor' => 0,
        'List::MoreUtils'       => 0
    },
    add_to_cleanup      => [ 'WWW-NioTV-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
