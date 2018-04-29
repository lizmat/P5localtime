use v6.c;
unit module P5localtime:ver<0.0.1>:auth<cpan:ELIZABETH>;

proto sub localtime(|) is export {*}
multi sub localtime(--> List:D) { localtime(CALLERS::<$_>) }
multi sub localtime(Int() $epoch --> List:D) {
}

proto sub gmtime(|) is export {*}
multi sub gmtime(--> List:D) { localtime(CALLERS::<$_>) }
multi sub gmtime(Int() $epoch --> List:D) {
}

=begin pod

=head1 NAME

P5localtime - Implement Perl 5's localtime / gmtime built-ins

=head1 SYNOPSIS

    use P5localtime;

    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);

    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday) = gmtime(time);

=head1 DESCRIPTION

This module tries to mimic the behaviour of the C<localtime> and C<gmtime>
functions of Perl 5 as closely as possible.

=head1 AUTHOR

Elizabeth Mattijsen <liz@wenzperl.nl>

Source can be located at: https://github.com/lizmat/P5localtime . Comments and
Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2018 Elizabeth Mattijsen

Re-imagined from Perl 5 as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
