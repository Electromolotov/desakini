part of 'pages.dart';

class ProfilPengguna extends StatelessWidget {
  ProfilPengguna({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.only(
              top: 25, left: defaultMargin, right: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.offAll(() => HomePage());
                      },
                      child: Icon(Icons.arrow_back, color: mainColor)),
                  Text(
                    'DESAKINI',
                    style: blackFontStyle1.copyWith(
                        fontSize: 13, color: mainColor),
                  ),
                  GestureDetector(
                      onTap: _openEndDrawer,
                      child: Icon(
                        Icons.menu,
                        color: mainColor,
                      )),
                ],
              ),
              const SizedBox(height: 45),
              Text(
                'Profil Pengguna',
                style: blackFontStyle1.copyWith(fontSize: 26),
              ),
              const SizedBox(
                height: 34,
              ),
              Row(
                children: [
                  Image.asset('assets/profile.png'),
                  const SizedBox(
                    width: 22,
                  ),
                  Text(
                    'REZA\nANDITAMA',
                    style: blackFontStyle1.copyWith(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(height: 45),
              Text(
                'NIK',
                style: blackFontStyle1.copyWith(fontSize: 13),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('72938709-09-23388-',
                  style: blackFontStyle3.copyWith(
                      fontSize: 13, color: greyfontColor)),
              const SizedBox(height: 10),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              const SizedBox(height: 15),
              Text(
                'Alamat',
                style: blackFontStyle1.copyWith(fontSize: 13),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Jl.Balong Kaler No.12 Rt.01 Rw.04, Garut, Jawa Barat',
                  style: blackFontStyle3.copyWith(
                      fontSize: 13, color: greyfontColor)),
              const SizedBox(height: 10),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              const SizedBox(height: 15),
              Text(
                'No Telp',
                style: blackFontStyle1.copyWith(fontSize: 13),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('082337890',
                  style: blackFontStyle3.copyWith(
                      fontSize: 13, color: greyfontColor)),
              const SizedBox(height: 10),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
