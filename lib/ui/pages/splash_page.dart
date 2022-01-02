part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() {
    const duration = Duration(seconds: 3);
    return Timer(duration, () {
      Get.off(() => const LoginPage());
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/splashscreen.png'))),
        child: Center(
          child: Image.asset(
            'assets/Logo.png',
            width: 197,
            height: 197,
          ),
        ),
      ),
    );
  }
}
