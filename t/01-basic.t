use v6.c;
use Test;
use P5localtime;

plan 4;

ok defined(::('&localtime')),
  'is &localtime imported?';
ok !defined(P5localtime::{'&localtime'}),
  'is &localtime externally NOT accessible?';
ok defined(::('&gmtime')),
  'is &gmtime imported?';
ok !defined(P5localtime::{'&gmtime'}),
  'is &gmtime externally NOT accessible?';

# vim: ft=perl6 expandtab sw=4
