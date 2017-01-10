import std.socket : TcpSocket, InternetAddress;
import std.stdio : writeln;

void main(string[] args)
{
  uint localhost = InternetAddress.parse("127.0.0.1");
  auto listener = new TcpSocket();
  assert(listener.isAlive);
  listener.blocking = false;
  listener.bind(new InternetAddress(localhost, 0));
  listener.listen(10);
  writeln(listener.localAddress());
  listener.close();
  assert(!listener.isAlive);
}
