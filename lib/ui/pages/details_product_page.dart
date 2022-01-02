part of 'pages.dart';

class DetailsProductPage extends StatelessWidget {
  DetailsProductPage({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _controller1 = TextEditingController();

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
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back, color: mainColor)),
                Text(
                  'DESAKINI',
                  style:
                      blackFontStyle1.copyWith(fontSize: 13, color: mainColor),
                ),
                GestureDetector(
                    onTap: _openEndDrawer,
                    child: Icon(
                      Icons.menu,
                      color: mainColor,
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Image.asset('assets/Rectangle 251.png'),
            const SizedBox(height: 20),
            Text('Telur Ayam', style: blackFontStyle1.copyWith(fontSize: 15)),
            Text('Rp.34.000', style: blackFontStyle1.copyWith(fontSize: 18)),
            const SizedBox(height: 7),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 64,
                width: 331,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: greyColor)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
                  child: Row(
                    children: [
                      Image.asset('assets/Rectangle 252.png'),
                      const SizedBox(width: 15),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Peternakan Asep Ciwidey',
                                style: blackFontStyle3.copyWith(fontSize: 15)),
                            Text('Bandung',
                                style: blackFontStyle3.copyWith(
                                    fontSize: 11, color: greyDotIndicator)),
                          ])
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Text('Detail Produk',
                style: blackFontStyle1.copyWith(fontSize: 15)),
            Text(
              'Jenis : Telur Ayam\nBerat : 3kg / tray\nKategori : Peternakan\nMin Pemesanan : 50 Tray\nDikirim Dari : Banten',
              style: blackFontStyle3.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 10),
            const Divider(height: 1, color: Colors.black),
            const SizedBox(height: 10),
            Text('Deskripsi Produk',
                style: blackFontStyle1.copyWith(fontSize: 15)),
            Text(
              'Telur lokal dengan kualitas terbaik di peternakan Asep yang berlokasi di Banten Jawa Barat\n\nTelur lokal dengan kualitas terbaik di peternakan Asep yang berlokasi di Banten Jawa Barat',
              style: blackFontStyle3.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.to(() => CartProductPage());
              },
              child: Container(
                width: 313,
                height: 52,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: mainColor)),
                child: Center(
                    child: Text('Lanjutkan',
                        style: blackFontStyle3.copyWith(fontSize: 15))),
              ),
            )
          ],
        ),
      )),
    );
  }
}
