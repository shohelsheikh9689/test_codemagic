import 'package:bloc_login/business_logic/login_bloc/login_bloc.dart';
import 'package:bloc_login/data/model/otp.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

Otp otp1 =  Otp(status: "1", msg: "gaya", otp: "3434");
Otp otp2 =  Otp(status: "0", msg: "ni aya", otp: "");



Future<Otp> mockSuccessLoginHandler(String mobileno) async {
  return otp1;
}

Future<Otp?> mockErrorLoginHandler(String mobileno) async {
  return null;
}

main() {

  blocTest<LoginBloc, LoginState>("Login Test Success",
      build: () => LoginBloc(testLoginHandler: mockSuccessLoginHandler),
      act: (bloc) => bloc.add(GetOTP(mobileNo: '9090909090909')),
      verify: (loginState) => expect(loginState.state, OtpLoaded(otp: otp1)));


  blocTest<LoginBloc, LoginState>("Login Test Error state ",
      build: () => LoginBloc(testLoginHandler: mockErrorLoginHandler),
      act: (bloc) => bloc.add(GetOTP(mobileNo: '')),
      verify: (loginState) => expect(loginState.state, OtpFailed()));


}
