use v6;
use Test;

use Proc::More :ALL;

use File::Temp;

plan 1;

my ($exitcode, $stderr, $stdout);
dies-ok { $exitcode = run-command 'fooie'; die if $exitcode; }
dies-ok { $exitcode = run-command 'fooie', :dir($*TMPDIR); die if $exitcode; };
dies-ok { ($exitcode, $stderr, $stdout) = run-command 'fooie', :dir($*TMPDIR), :all; die if $exitcode; };

# run
