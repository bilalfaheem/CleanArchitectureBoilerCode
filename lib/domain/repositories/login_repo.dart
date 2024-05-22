import 'package:fpdart/fpdart.dart';
import 'package:todo_bloc/domain/entities/user.dart';
import 'package:todo_bloc/domain/failures/login_failure.dart';


abstract class LoginRepo{
  Future<Either<LoginFailure,User>> login(Map<String,String> data);
}