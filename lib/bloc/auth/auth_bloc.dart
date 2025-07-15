import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(Duration(seconds: 1)); // Simulasi login
      if (event.email == 'aslam@gmail.com' && event.password == '1234') {
        emit(AuthAuthenticated(event.email));
      } else {
        emit(AuthError('Email atau password salah!'));
      }
    });

    on<LogoutRequested>((event, emit) {
      emit(AuthInitial());
    });
  }
}
