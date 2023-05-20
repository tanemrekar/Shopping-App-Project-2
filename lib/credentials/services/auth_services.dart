
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth{
sigInWIthGoogle()async{
  final GoogleSignInAccount? googleSignIn=await GoogleSignIn().signIn();
  final GoogleSignInAuthentication googleSignInAuthentication=await googleSignIn!.authentication;
final credential =GoogleAuthProvider.credential(
  idToken: googleSignInAuthentication.idToken,
  accessToken: googleSignInAuthentication.accessToken
);
return FirebaseAuth.instance.signInWithCredential(credential);
}
}