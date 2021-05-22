import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:demonic_chats/screens/welcome_screen.dart';
import 'package:demonic_chats/screens/login_screen.dart';
import 'package:demonic_chats/screens/registration_screen.dart';
import 'package:demonic_chats/screens/chat_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DemonicChat());
}

class DemonicChat extends StatelessWidget {
  const DemonicChat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}

