use inc::Module::Install;

name 'Devel-InheritNamespace';
all_from 'lib/Devel/InheritNamespace.pm';

requires 'namespace::clean';
requires 'Module::Pluggable';
requires 'Moose';

auto_set_repository;

WriteAll;