import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/auth/auth_event.dart';

class ProfileScreen extends StatelessWidget {
  final String email;

  const ProfileScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(LogoutRequested());
            },
          )
        ],
      ),
      body: Center(
        child: Text("SELAMAT DATANG DI APPS KAMI",
            style: Theme.of(context).textTheme.headlineSmall),
      ),
    );
  }
}
