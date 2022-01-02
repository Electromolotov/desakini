part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/loginpage.png'),
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 62, bottom: 17),
              child: Text(
                'Hai, Silahkan Masuk',
                style:
                    blackFontStyle1.copyWith(fontSize: 32, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Silahkan isi informasi nama pengguna dan password anda untuk login.',
                style:
                    blackFontStyle3.copyWith(fontSize: 18, color: Colors.white),
              ),
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 23, top: 150, right: 23, bottom: 100),
                child: Column(
                  children: [
                    TextFormField(
                      controller: textController1,
                      decoration: InputDecoration(
                        hintText: 'No Telp, email atau nama penguna',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(13, 0, 0, 0),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Wajib Di Isi';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: textController2,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(13, 0, 0, 0),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Wajib Di Isi';
                        }

                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Center(
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 330, height: 45),
                  child: ElevatedButton(
                    child: Text(
                      'LOGIN',
                      style: blackFontStyle3.copyWith(fontSize: 18),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: () {
                      Get.off(() => HomePage());
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 200),
              child: Center(
                child: Container(
                  height: 15,
                  decoration: const BoxDecoration(),
                  child: Text('© 2021 BAGUS CIPTA TEKNOLOGI',
                      textAlign: TextAlign.center,
                      style: blackFontStyle3.copyWith(
                          fontSize: 10, color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
