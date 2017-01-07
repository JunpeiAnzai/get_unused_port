my $unused_port = do {
    my $l = IO::Socket::INET->new(
        Listen => 5,
        LocalHost => '127.0/0/1',
        LocalPort => 0,
        Proto => 'tcp',
        ReuseAddr => 1,
        ) or die $!;
    $l->sockport;
};
