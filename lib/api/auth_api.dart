import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as model;
import 'package:fpdart/fpdart.dart';
import 'package:riverpod/riverpod.dart';
import 'package:twitter_clone/core/core.dart';
import 'package:twitter_clone/core/providers.dart';

abstract class IAuthApi {
  FutureEither<model.Account> signIn(
      {required String email, required String password});
  FutureEither<model.Account> signUp({
    required String email,
    required String password,
    required String name,
  });
}

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(account: ref.watch(appwriteAccountProvider));
});

class AuthApi implements IAuthApi {
  final Account _account;
  AuthApi({required Account account}) : _account = account;

  @override
  FutureEither<model.Account> signIn(
      {required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  FutureEither<model.Account> signUp(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final account = await _account.create(
        userId: ID.unique(),
        email: email,
        password: password,
        name: name,
      );
      return right(account);
    } on AppwriteException catch (e) {
      return left(
          Failure(e.message ?? "Somethinfg is wrong", StackTrace.current));
    } catch (e) {
      return left(Failure(e.toString(), StackTrace.current));
    }
  }
}
