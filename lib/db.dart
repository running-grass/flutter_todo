import 'package:surrealdb_client/surrealdb_client.dart';

final db = SurrealClient(url: 'ws://192.168.0.102:33060/rpc');

Future initDb() async {
  await db.wait();
  await db.signIn({
    'user': 'grass',
    'pass': 'grass',
    'SC': 'allusers',
    "NS": 'test',
    'DB': 'test'
  });

  await db.use('test', 'test');
}
