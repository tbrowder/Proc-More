use v6;
use Test;

use Proc::More :ALL;

use File::Temp;

plan 10;

my ($exitcode, $stderr, $stdout);
dies-ok { $exitcode = run-command 'fooie'; die if $exitcode; }
dies-ok { $exitcode = run-command 'fooie', :dir($*TMPDIR); die if $exitcode; };
dies-ok { ($exitcode, $stderr, $stdout) = run-command 'fooie', :dir($*TMPDIR), :all; die if $exitcode; };
dies-ok { run-command 'ls -l', :dir($*TMPDIR), :all, :out, :err; }

# run some real commands
lives-ok { run-command 'ls -l' }
lives-ok { run-command 'ls -l', :dir($*TMPDIR); }
lives-ok { run-command 'ls -l', :all; }
lives-ok { run-command 'ls -l', :dir($*TMPDIR), :all; }
lives-ok { run-command 'ls -l', :dir($*TMPDIR), :all, :out; }
lives-ok { run-command 'ls -l', :dir($*TMPDIR), :out; }
