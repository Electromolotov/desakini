part of 'widgets.dart';

class EndDrawer extends StatefulWidget {
  EndDrawer({Key? key}) : super(key: key);

  @override
  _EndDrawerState createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/menuback.png'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.person_outline,
                      color: Colors.transparent,
                    ),
                    Text(
                      'DESAKINI',
                      style: blackFontStyle1.copyWith(
                          fontSize: 13, color: Colors.white),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.close, color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => ProfilPengguna());
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.account_circle_outlined,
                            color: Colors.white),
                        const SizedBox(
                          width: 21,
                        ),
                        Text(
                          'Profil pengguna',
                          style: blackFontStyle3.copyWith(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => PesanPage());
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.mail_outline, color: Colors.white),
                        const SizedBox(
                          width: 21,
                        ),
                        Text(
                          'Pesan',
                          style: blackFontStyle3.copyWith(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      const Icon(Icons.store_outlined, color: Colors.white),
                      const SizedBox(
                        width: 21,
                      ),
                      Text(
                        'Toko',
                        style: blackFontStyle3.copyWith(
                            fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => FaqPage());
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.text_snippet_outlined,
                            color: Colors.white),
                        const SizedBox(
                          width: 21,
                        ),
                        Text(
                          'F.A.Q',
                          style: blackFontStyle3.copyWith(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => TentangPage());
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white),
                        const SizedBox(
                          width: 21,
                        ),
                        Text(
                          'Tentang',
                          style: blackFontStyle3.copyWith(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      const Icon(Icons.settings, color: Colors.white),
                      const SizedBox(
                        width: 21,
                      ),
                      Text(
                        'Setting',
                        style: blackFontStyle3.copyWith(
                            fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
