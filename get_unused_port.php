<?php
$sock = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
socket_bind($sock, '127.0.0.1', 0);
socket_getsockname($sock, $address, $port);
socket_close($sock);