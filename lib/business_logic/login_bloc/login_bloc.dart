import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:bloc_login/data/dataproviders/network/api_call.dart';
import 'package:bloc_login/data/model/login_check.dart';
import 'package:bloc_login/data/model/otp.dart';

import '../../router/routing_constants.dart';

part 'login_event.dart';

part 'login_state.dart';

typedef LoginHandler = Future<Otp?> Function(String mobileNo);

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginHandler? testLoginHandler;

  Future<Otp?> _loginHandler(String mobileNo) async {
    Otp? otp = await Api.getOTP(mobileNo);

    return otp;
  }

  LoginBloc({this.testLoginHandler}) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    Otp? otp;
    if (event is GetOTP) {
      yield OtpLoading();

      if (event.mobileNo == "") {
        yield OtpFailed();
      } else {
        otp = await (testLoginHandler ?? _loginHandler)(event.mobileNo);
      }

      if (otp == null) {
        yield OtpFailed();
      } else if (otp.status == "1") {
        yield OtpLoaded(otp: otp);
      }
    }

    if (event is VerifyLogin) {
      yield VerifyOtpLoading();
      LoginCheck? loginCheck =
          await Api.verifyLogin(event.token, event.mobileNo);
      if (loginCheck == null) {
        yield VerifyOtpFailed();
      } else if (loginCheck.status == "1") {
        yield VerifyOtpLoaded(loginCheck: loginCheck);
      }
    }
  }
}
