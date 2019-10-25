package Bencher::Scenario::RegexpPatternGit;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark Regexp::Pattern::Git',
    modules => {
        # minimum versions
        #'Foo' => {version=>'0.31'},
        'Regexp::Pattern' => {},
        'Regexp::Pattern::Git' => {},
    },
    participants => [
        {
            name => 'ref',
            code_template => 'use Regexp::Pattern; state $re = re("Git::ref"); <data> =~ $re',
        },
    ],

    datasets => [
        {args => {data=>'.one'}},
        {args => {data=>'one/two'}},
        {args => {data=>'one/two/three/four/five/six'}},
    ],
};

1;
# ABSTRACT:
