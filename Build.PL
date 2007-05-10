use Module::Build;

my $builder = Module::Build->new(

  module_name       => 'Egg::Plugin::Net::Ping',
  dist_version_from => 'lib/Egg/Plugin/Net/Ping.pm',
  dist_author       => 'Masatoshi Mizuno E<lt>lusheE<64>cpan.orgE<gt>',
  license           => 'perl',

  requires => {

    'Egg::Release' => 2.00,
    'Net::Ping'    => 2.31,

    'Test::Simple'          => 0,
    'Test::Pod'             => 0,
    'Test::Perl::Critic'    => 0,
    'Test::Pod::Coverage'   => 0,
    },
  );

$builder->create_build_script();
