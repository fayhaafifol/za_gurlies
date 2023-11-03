import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test/account/choice.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test/firebase_options.dart';
import 'package:test/homeFiles/homepage.dart';
import 'firebase_Auth_services.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name:'pet project',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: "AIzaSyDMBH9PXHX5mdg-eOa77Are10Eq-XfbJTs",
      appId: "1:877282308511:android:4bd35d981bc7feb95bcdaa",
      messagingSenderId: "877282308511",
      projectId: "pet-project-de9a5",)
  );
  runApp( MaterialApp(
    title: 'Nolfymos',
    home:(FirebaseAuth.instance.currentUser != null &&FirebaseAuth.instance.currentUser!.emailVerified ) ? homePage():Login(),
    debugShowCheckedModeBanner: false,
  ),
  );
}
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
final _formKey=GlobalKey<FormState>();

signInWithEmailAndPassword()async{
  try {
     await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: pass.text
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'No user found for that email.')));
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Wrong password provided for that user.')));
      print('Wrong password provided for that user.');
    }
  }
}
  Future signInWithGoogle() async {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if(googleUser==null){
        return ;
      }
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser
          ?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
     await FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context){//(buildcontext second page)
            return  homePage();
          })
      );

}
  final FirebaseAuthService _auth=FirebaseAuthService();
  bool password=true;
  _LoginState();
  @override
  //========User status========
  void initState() {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }
  String text='';
  Icon icc=const Icon(Icons.remove_red_eye_outlined);
  TextEditingController pass=TextEditingController();
  TextEditingController email=TextEditingController();
  String l= ('No user found for that email.');
  String x=('Wrong password provided for that user.');
  bool login=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Nolfymos',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Form(
              key:_formKey,
              //color: Colors.white70,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(text.toString(),style: const TextStyle(
                            color: Colors.amber,fontSize: 30
                        ),),
                          TextFormField(
                          keyboardType: TextInputType.text,
                            controller: email,
                            onFieldSubmitted: (s){
                            },
                            decoration:  InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter Your Email',
                              suffixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(37)
                              ),
                            ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          controller: pass,
                          obscureText: password,
                          decoration:  InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter Your Password',
                              suffixIcon: IconButton(
                                icon: icc,
                                onPressed: (){
                                  setState(() {
                                    password=!password;
                                    if (password==false) {
                                      icc = const Icon(FontAwesomeIcons.eyeSlash,size: 18,);
                                    } else {
                                      icc = const Icon(Icons.remove_red_eye_outlined);
                                    }
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(37),
                              )
                          ),
                        ),
    //===========================forget password without email==========================
                        InkWell(
                          onTap: ()async{
                            if(email.text==''){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'Please enter your email.')));
                              return ;
                            }
 //==============================forget password==========================
                            try{
                              await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'Please check your email and create a password.')));
                            }catch(e){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'Verify the email you entered')));
                              print(e);
                            }
                          },
                          child: Container(
                            margin:const EdgeInsets.only(top: 10,bottom: 20),
                            alignment: Alignment.topRight,
                            child: const Text('Forget Password?',style: TextStyle(fontSize: 14),),
                          ),
                        )

                        ,const SizedBox(
                          height: 25,
                        ),

                        const SizedBox(
                          height: 25,
                        ),
                        CupertinoButton(
                            padding: EdgeInsets.zero,
                            child: Container(
                              alignment: Alignment.center,
                              width: 250,
                              height: 37,
                              decoration: BoxDecoration(
                                color:Colors.orange,
                                borderRadius: BorderRadius.circular(37),
                              ),
                              child: const Text('Sign In',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w700) ,),
                            ) , onPressed: () async
                        {
    //=======================real email=========================
                          try {
                            final userCredential = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                email: email.text, password: pass.text);
                            if(userCredential.user!.emailVerified){
                              print(userCredential);
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context){//(buildcontext second page)
                                    return  homePage();
                                  })
                              );
                            }
                            else{
                              FirebaseAuth.instance.currentUser!.sendEmailVerification();
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'please check your email')));
                            }
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print(l);
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'No user found for that email.')));
                            } else if (e.code == 'wrong-password') {

                              print(x);
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'Wrong password provided for that user.')));
                            }

                            else{
                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'No user found for that email or Wrong password provided for that user')));
                            }

                          }
                        }),
                        const SizedBox(
                          height: 25,
                        ),
                        //Container(height: 20,),
                        const Text('Or',textAlign: TextAlign.center,),
                        const SizedBox(
                        height: 25),
                          CupertinoButton(
                            padding: EdgeInsets.zero,
                            child: Container(
                                alignment: Alignment.center,
                                width: 300,
                                height: 37,
                                decoration: BoxDecoration(
                                  color:Colors.pink[10],
                                  borderRadius: BorderRadius.circular(37),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[
                                    const Text('Sign In With Google',style:TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.w700) ,),
                                    Image.asset('assets/imge/q8-vPggS_400x400.jpg',width: 20,)
                                  ],
                                )
                            ) , onPressed: ()async{

                          await signInWithGoogle();
                          if(mounted){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context){//(buildcontext second page)
                                  return  homePage();
                                })
                            );
                          }
                        }),
                        const SizedBox(
                          height: 25,
                        ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context){//(buildcontext second page)
                                    return const Choice();
                                  })
                              );
                            },
                              child:const Center(
                                  child: Text.rich(TextSpan(children:[
                                    TextSpan(text: 'Not a member yet?',style: TextStyle(color: Colors.black)),
                                    TextSpan(text: 'Sign up',style: TextStyle(color:Colors.orangeAccent,fontWeight: FontWeight.bold)),

                                  ]))
                              )
                          ),
                        SizedBox(
                          height: 25,
                        ),


                      ]
            ),
                  ),
          ],
        ),
    );
  }

}