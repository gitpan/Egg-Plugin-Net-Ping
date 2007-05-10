
use Test::More qw/no_plan/;
use Egg::Helper::VirtualTest;

my $t= Egg::Helper::VirtualTest->new( prepare=> {
  controller => { egg_includes=> [qw/ Net::Ping /] },
  config => { plugin_net_ping => {
    timeout => 1,
    retry   => 3,
    wait    => 0.2,
    } },
  });

ok my $e= $t->egg_context;
ok my $result= $e->ping('127.0.0.1');
is $result, 3;
ok $result= $e->ping('127.0.0.1', retry=> 2 );
is $result, 2;
