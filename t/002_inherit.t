use Test::More (tests => 6);

use_ok "Devel::InheritNamespace";

my $din = Devel::InheritNamespace->new(
    except => qr/(?:Functions|VMS|Win32)$/,
);

my @modules = $din->all_modules( 'MyApp' => 'File::Spec' );
is( $modules[0], 'MyApp::Cygwin' );
is( $modules[1], 'MyApp::Epoc' );
is( $modules[2], 'MyApp::Mac' );
is( $modules[3], 'MyApp::OS2' );
is( $modules[4], 'MyApp::Unix' );