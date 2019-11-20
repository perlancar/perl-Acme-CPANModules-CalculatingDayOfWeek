package Acme::CPANModules::CalculatingDayOfWeek;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $LIST = {
    summary => 'Modules to calculate day of week',
    entries => [
        {
            module => 'Date::DayOfWeek',
            bench_fcall_template => 'Date::DayOfWeek::dayofweek(<day>, <month>, <year>)',
            description => <<'_',

Both <pm:Date::DayOfWeek> and <pm:Time::DayOfWeek> are lightweight modules.

_
        },
        {
            module => 'Time::DayOfWeek',
            bench_fcall_template => 'Time::DayOfWeek::DoW(<year>, <month>, <day>)',
            description => <<'_',

Both <pm:Date::DayOfWeek> and <pm:Time::DayOfWeek> are lightweight modules.

This module offers cryptic and confusing function names: `DoW` returns 0-6,
`Dow` returns 3-letter abbrev.

_
        },
        {
            module => 'DateTime',
            bench_code_template => 'DateTime->new(year=><year>, month=><month>, day=><day>)->day_of_week',
            description => <<'_',

Compared to <pm:Date::DayOfWeek> and <pm:Time::DayOfWeek>, <pm:DateTime> is a
behemoth. But it provides a bunch of other functionalities as well.

_
        },
    ],

    bench_datasets => [
        {name=>'date1', args => {day=>20, month=>11, year=>2019}},
    ],

};

1;
# ABSTRACT:
