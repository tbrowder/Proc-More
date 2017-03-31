use v6;
use Test;

use Proc::More :ALL;

plan 1;

dies-ok { $res = run-command 'fooie'; die if $res; };
