package SlowServer;
# This test class just waits a while before it starts
# accepting connections. This makes sure that CPAN #28122 is fixed:
# background() shouldn't return prematurely.

use base qw(HTTP::Server::Simple::CGI);
sub setup_listener {
    my $self = shift;
    $self->SUPER::setup_listener();
    sleep 2;
}
1;

