import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupEvent>((event, emit) async {
      if (event is SignUpDoneEvent) {
        print('________________');
        print(event.username);
        print(event.email);
        print(event.phone);
        print(event.password);

        try {
          final userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: event.email, password: event.password);

          final userId = userCredential.user!.uid;
          print('________________');
          print(userId);

          CollectionReference userInfo =
              FirebaseFirestore.instance.collection('userdetails');
          await userInfo.doc(userId).set({
            'NAME': event.username,
            'EMAIL': event.email,
            'PHONE': event.phone,
            'PASSWORD': event.password,
            'UID': userId,
          });
          emit(SignUpSuccessState());
        } catch (e) {}
      }
    });
  }
}
