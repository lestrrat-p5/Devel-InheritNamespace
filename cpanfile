requires 'Module::Pluggable';
requires 'Moose';
requires 'namespace::clean';

on build => sub {
    requires 'ExtUtils::MakeMaker', '6.36';
};
