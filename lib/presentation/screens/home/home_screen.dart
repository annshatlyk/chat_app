import '../../../data/services/service_locator.dart';
import '../../../logic/cubits/auth/auth_cubit.dart';
import '../login_screen.dart';
import '../../../router/app_router.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        actions: [
          InkWell(
            onTap: () async {
              await getIt<AuthCubit>().signOut();
              getIt<AppRouter>().pushAndRemoveUntil(LoginScreen());
            },
            child: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Text('User is authenticated'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        // backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.9),
      ),
    );
  }
}
