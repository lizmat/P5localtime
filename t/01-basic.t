use v6.c;
use Test;
use P5localtime;

plan 40;

ok defined(::('&localtime')),
  'is &localtime imported?';
ok !defined(P5localtime::{'&localtime'}),
  'is &localtime externally NOT accessible?';
ok defined(::('&gmtime')),
  'is &gmtime imported?';
ok !defined(P5localtime::{'&gmtime'}),
  'is &gmtime externally NOT accessible?';

sub ok-time(@t, $type) {
    ok 0 <= @t[0] <=  59, "is $type second in range";
    ok 0 <= @t[1] <=  59, "is $type minute in range";
    ok 0 <= @t[2] <=  23, "is $type hour in range";
    ok 0 <= @t[3] <=  31, "is $type day in month in range";
    ok 0 <= @t[4] <=  11, "is $type month in range";
    ok 0 <= @t[5]       , "is $type year in range";
    ok 0 <= @t[6] <=   6, "is $type day in week in range";
    ok 0 <= @t[7] <= 366, "is $type day in year in range";
    ok 0 <= @t[8] <=   1, "is $type is daylight saving time in range";
}

ok-time localtime, 'localtime';
ok-time    gmtime, 'gmtime';

ok-time localtime(1525034924), 'localtime(1525034924)';
ok-time    gmtime(1525034924), 'gmtime(1525034924)';

# vim: ft=perl6 expandtab sw=4
