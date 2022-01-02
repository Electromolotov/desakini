part of 'pages.dart';

class DaruratPage extends StatelessWidget {
  DaruratPage({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: EndDrawer(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/darurat.png'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.offAll(() => HomePage());
                        },
                        child:
                            const Icon(Icons.arrow_back, color: Colors.white)),
                    Text(
                      'DESAKINI',
                      style: blackFontStyle1.copyWith(
                          fontSize: 13, color: Colors.white),
                    ),
                    GestureDetector(
                        onTap: _openEndDrawer,
                        child: const Icon(Icons.menu, color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 200),
                const Icon(Icons.warning, color: Colors.white),
                const SizedBox(height: 7),
                Text(
                  'Perhatian, gunakan fitur ini apabila anda benar benar dalam situasi darurat',
                  style: blackFontStyle3.copyWith(
                      fontSize: 13, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 125),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 330, height: 45),
                  child: ElevatedButton(
                    child: Text(
                      'LANJUTKAN',
                      style: blackFontStyle3.copyWith(
                          fontSize: 18, color: Colors.white),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent)),
                    onPressed: () {
                      Get.off(() => const ChoiceStatusPage());
                    },
                  ),
                ),
                const SizedBox(
                  height: 175,
                ),
                Text(
                  'Nyalakan GPS anda hal ini untuk mempermudah petugas mencari lokasi terdekat',
                  style: blackFontStyle3.copyWith(
                      fontSize: 13, color: Colors.white),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChoiceStatusPage extends StatelessWidget {
  const ChoiceStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawer(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/darurat2.png'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.offAll(() => HomePage());
                        },
                        child:
                            const Icon(Icons.arrow_back, color: Colors.white)),
                    Text(
                      'DESAKINI',
                      style: blackFontStyle1.copyWith(
                          fontSize: 13, color: Colors.transparent),
                    ),
                    const Icon(Icons.menu, color: Colors.transparent),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  'Klik tombol yang akan anda gunakan di bawah ini',
                  style: blackFontStyle3.copyWith(
                      fontSize: 13, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 125),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 330, height: 45),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.local_fire_department_outlined,
                            color: Colors.red),
                        Text(
                          'Bencana Alam',
                          style: blackFontStyle3.copyWith(
                              fontSize: 14, color: Colors.red),
                        ),
                        const Icon(Icons.local_fire_department_outlined,
                            color: Colors.transparent),
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: () {
                      Get.off(() => HomePage());
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 330, height: 45),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.directions_car_outlined,
                            color: Colors.red),
                        Text(
                          'Lakalantas',
                          style: blackFontStyle3.copyWith(
                              fontSize: 14, color: Colors.red),
                        ),
                        const Icon(Icons.local_fire_department_outlined,
                            color: Colors.transparent),
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: () {
                      Get.off(() => HomePage());
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 330, height: 45),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.medical_services_outlined,
                            color: Colors.red),
                        Text(
                          'Medis',
                          style: blackFontStyle3.copyWith(
                              fontSize: 14, color: Colors.red),
                        ),
                        const Icon(Icons.local_fire_department_outlined,
                            color: Colors.transparent),
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: () {
                      Get.off(() => HomePage());
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 330, height: 45),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.security_outlined, color: Colors.red),
                        Text(
                          'Keamanan',
                          style: blackFontStyle3.copyWith(
                              fontSize: 14, color: Colors.red),
                        ),
                        const Icon(Icons.local_fire_department_outlined,
                            color: Colors.transparent),
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: () {
                      Get.off(() => HomePage());
                    },
                  ),
                ),
                const SizedBox(
                  height: 195,
                ),
                Text(
                  'Nyalakan GPS anda hal ini untuk mempermudah petugas mencari lokasi terdekat',
                  style: blackFontStyle3.copyWith(
                      fontSize: 13, color: Colors.white),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
