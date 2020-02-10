package Bencher::Scenario::PathNaive::normalize_path;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark normalize_path()',
    participants => [
        {
            fcall_template => 'Path::Naive::normalize_path(<string>)',
        },
    ],
    datasets => [
        {args=>{string=>'/'}},
        {args=>{string=>'/a'}},
        {args=>{string=>'/a/b/c/d/e'}},
        {args=>{string=>'/a/./b/../b/c///d/././e'}},
    ],
};

1;
# ABSTRACT:
