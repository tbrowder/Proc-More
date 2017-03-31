use v6;
use Test;

use Proc::More :ALL;

plan 1;

my $res;
dies-ok { $res = run-command 'fooie'; die if $res; };
