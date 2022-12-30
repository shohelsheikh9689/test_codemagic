import 'package:bloc_login/presentation/screens/login_screen.dart';
import 'package:bloc_login/presentation/screens/otp_screen.dart';
import 'package:bloc_login/presentation/screens/product_list_screen.dart';
import 'package:bloc_login/router/routing_constants.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {

  currentRoute=settings.name!;
  switch (settings.name) {

    case loginScreenRoute:
      return MaterialPageRoute(builder: (context) =>   LoginScreen());

    case otppage:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => OtpScreen(
          mobileNo: args['mobileno'],
        ),
      );


    case product:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => ProductListScreen(
          mobileNo: args['id'],
        ),
      );


      /*
    case loginScreenRoute:
      return MaterialPageRoute(builder: (context) => const LoginScreen());

    case resetPasswordScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => ResetPassswordScreen(
          id: args['id'],
          code: args['code'],
        ),
      );
    case dashboardScreenRoute:
      var user = settings.arguments as User;
      return MaterialPageRoute(
        builder: (context) => DashboardScreen(user: user),
      ); //need to figure out how to add args

    case passiveScreenRoute:
      final Map<String, dynamic> args =
          settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => PassiveScreen(
          token: args['token'],
          pageController: args['page_controller'],
        ),
      );
    case reviewScreenRoute:
      final arg = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => ReviewScreen(
          token: arg,
        ),
      );
    case forgotPasswordScreenRoute:
      return MaterialPageRoute(builder: (context) => ForgotPasswordScreen());
    case forgotPasswordCodeVerficationScreenRoute:
      String? id = settings.arguments as String?;
      return MaterialPageRoute(
        builder: (context) => CodeVerficationScreen(
          id: id,
        ),
      );
    case forgotPasswordResetScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => ResetPassswordScreen(
          code: args['code'],
          id: args['id'],
        ),
      );
    case editProfileScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => EditProfileScreen(
          token: args['token'],
          userProfile: args['userProfile'],
        ),
      );

    case settingsScreenRoute:
      final arg = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => SettingsScreen(
          token: arg,
        ),
      );

    case changePasswordScreenRoute:
      final arg = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => ChangePasswordScreen(
          token: arg,
        ),
      );
    case activeScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => ActiveScreen(
          token: args['token'],
        ),
      );

    case meaningScreenRoute:
      final arg = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => MeaningScreen(
          submitTranscriptionResponseModel: arg['response'],
          token: arg['token'],
          transcription: arg['transcription'],
        ),
      );

    case reviewTranscriptionScreenroute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) {
          return ReviewScreenTranscriptionScreen(
            fetchReviewResponseModel: args['fetchReviewResponseModel'],
            token: args['token'],
          );
        },
      );

    case reviewCardGradeScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) {
          return ReviewCardGradeScreen(
            fetchReviewResponseModel: args['fetchReviewResponseModel'],
            token: args['token'],
          );
        },
      );
    case wordDetailsScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => WordDetailsScreen(
          token: args['token'],
          wordId: args['wordId'],
        ),
      );

    //TEsting
    case stepTwoScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => StepTwoScreen(
          token: args['token'],
          sessionId: args['session_id'],
          startStepTwoSessionModel: args['startStepTwoSessionModel'],
        ),
      );
    case transcriptionScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => TranscriptionScreen(
          token: args['token'],
          sessionId: args['session_id'],
          transcription: args['transcription'],
          submitTranscriptionResponseModel:
              args['submitTranscriptionResponseModel'],
        ),
      );
    case stepOneScreenRoute:
      final args = settings.arguments as List<String>;
      return MaterialPageRoute(
        builder: (context) => StepOneScreen(
          articleId: args[0],
          token: args[1],
        ),
      );

    case mockMeaningScreenRoute:
      final arg = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => MockMeaningScreen(
          submitTranscriptionResponseModel: arg['response'],
          token: arg['token'],
          transcription: arg['transcription'],
        ),
      );

    case repeatStepTwoScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => RepeatStepTwoScreen(
          token: args['token'],
          sessionId: args['session_id'],
          submitPhraseComprehensionResponseModel:
              args['submitPhraseComprehensionResponseModel'],
        ),
      );
    case mockStepThreeScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => StepThreeScreen(
          submitFinalPhraseComprehensionResponseModel:
              args['submitFinalPhraseComprehensionResponseModel'],
          token: args['token'],
          sessionId: args['session_id'],
        ),
      );
    case mockresultScreenRoute:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => ResultScreen(
          stepThreeEndResponseModel: args['stepThreeEndResponseModel'],
          articleName: args['article_name'],
          token: args['token'],
        ),
      );*/
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );

  }
}
