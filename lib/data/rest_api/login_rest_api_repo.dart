import 'package:fpdart/src/either.dart';
import 'package:todo_bloc/data/model/user_json.dart';
import 'package:todo_bloc/domain/app_url/app_url.dart';
import 'package:todo_bloc/domain/entities/user.dart';
import 'package:todo_bloc/domain/failures/login_failure.dart';
import 'package:todo_bloc/domain/repositories/login_repo.dart';
import 'package:todo_bloc/network/network.dart';

class LoginRestApiRepo implements LoginRepo {
  final AppUrl _appUrl;

  final Network _network;
  LoginRestApiRepo(this._appUrl, this._network);

  @override
  Future<Either<LoginFailure, User>> login(Map<String, String> data) =>
      _network.post(_appUrl.loginEndPoint, data).then((value) => value.fold(
          (err) => left(LoginFailure(error: err.toString())),
          (response) => right(UserJson.fromJson(response).toDomain())));
}
