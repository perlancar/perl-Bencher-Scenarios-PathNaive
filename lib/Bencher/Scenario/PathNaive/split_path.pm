package Bencher::Scenario::PathNaive::split_path;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark split_path()',
    participants => [
        {
            fcall_template => 'Path::Naive::split_path(<string>)',
            result_is_list => 1,
        },
        {
            name => 'split with /',
            code_template => 'split "/", <string>',
            result_is_list => 1,
        },
    ],
    datasets => [
        {args=>{string=>'/'}},
        {args=>{string=>'/a/b/c/d/e'}},
        {args=>{string=>'/a/b/////c/d/e'}},
    ],
};

1;
# ABSTRACT:
