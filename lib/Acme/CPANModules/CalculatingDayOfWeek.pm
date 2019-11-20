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
        {
            module => 'Date::Calc',
            bench_fcall_template => 'Date::Calc::Day_of_Week(<year>, <month>, <day>)',
            description => <<'_',

<pm:Date::Calc> is a nice compromise when you want something that is more
lightweight and does not need to be as accurate as <pm:DateTime>.

_
        },
        {
            module => 'Time::Moment',
            bench_code_template => 'Time::Moment->new(year => <year>, month => <month>, day => <day>)->day_of_week',
            description => <<'_',

<pm:Time::Moment> is also a nice alternative to <pm:DateTime>. Although it's not
as featureful as DateTime, it is significantly more lightweight. Compared to
<pm:Date::Calc>, Time::Moment's API is closer to DateTime's. Being an XS module,
it's also faster.

_
        },
    ],

    bench_datasets => [
        {name=>'date1', args => {day=>20, month=>11, year=>2019}},
    ],

};

1;
# ABSTRACT:
