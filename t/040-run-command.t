use v6;
use Test;

use Proc::More :ALL;

use File::Temp;

plan 1;

my $res;
dies-ok { $res = run-command 'fooie'; die if $res; };
