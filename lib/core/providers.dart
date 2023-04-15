import 'package:appwrite/appwrite.dart';
import 'package:riverpod/riverpod.dart';
import 'package:twitter_clone/constant/appwrite_constant.dart';

final appWriteProvider = Provider((ref) {
  Client client = Client(
    endPoint: AppWriteConstant.kEndpoint,
    selfSigned: true,
  );
  client.setProject(AppWriteConstant.kProjectId);
  return client;
});

final appwriteAccountProvider = Provider((ref) {
  return Account(ref.watch(appWriteProvider));
});
