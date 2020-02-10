package Bencher::Scenario::PathNaive::concat_path;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark concat_path()',
    participants => [
        {
            fcall_template => 'Path::Naive::concat_path(<path1>, <path2>)',
        },
        {
            fcall_template => 'Path::Naive::concat_and_normalize_path(<path1>, <path2>)',
        },
    ],
    datasets => [
        {args=>{path1=>'a', path2=>'b'}},
        {args=>{path1=>'/a/b/c/d/e', path2=>'f/g/h/i/j'}},
        {args=>{path1=>'/a/b/c/./d/e', path2=>'f/g/h/i/j'}},
    ],
};

1;
# ABSTRACT:
