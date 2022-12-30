part of 'login_bloc.dart';

// @immutable
// abstract class LoginState {}

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}





class LoginInitial extends LoginState {}

class OtpLoading extends LoginState {}

class OtpLoaded extends LoginState {
  final Otp? otp;

    OtpLoaded({required this.otp});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is OtpLoaded &&
          runtimeType == other.runtimeType &&
          otp == other.otp;

  @override
  int get hashCode => super.hashCode ^ otp.hashCode;

// @override
  // List<Object> get props => [otp];


}

class OtpFailed extends LoginState {}

class VerifyOtpLoading extends LoginState {}

class VerifyOtpLoaded extends LoginState {
  final LoginCheck? loginCheck;

  const VerifyOtpLoaded({required this.loginCheck});
}

class VerifyOtpFailed extends LoginState {}
