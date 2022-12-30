import 'package:bloc_login/router/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/business_logic/login_bloc/login_bloc.dart';
import '../../router/app_router.dart';
import 'screens.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController mobileController = TextEditingController();

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image.asset(
            //   "assets/images/userImage.jpeg",
            //   height: 150,
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: mobileController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "MobileNo"),
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
              ),
            ),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                LoginBloc bloc = BlocProvider.of<LoginBloc>(context);
                return TextButton(
                  onPressed: () {

                    if(currentRoute!=null){
                      debugPrint(currentRoute);
                    }

                    Navigator.of(context).pushNamed(otppage,arguments: {"mobileno":"90909090"});


                    bloc.add(
                      GetOTP(mobileNo: "8778578475"),
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => BlocProvider.value(
                    //       value: bloc,
                    //       child: OtpScreen(mobileNo: mobileController.text),
                    //     ),
                    //   ),
                    // );
                  },
                  child: const Text('Login'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
