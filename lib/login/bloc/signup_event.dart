part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignUpDoneEvent extends SignupEvent {
  SignUpDoneEvent(
      {required this.username,
      required this.email,
      required this.phone,
      required this.password});
  String username;
  String email;
  String phone;
  String password;
}
