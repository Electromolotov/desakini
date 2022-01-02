part of 'pages.dart';

class NewsPage extends StatelessWidget {
  NewsPage({Key? key}) : super(key: key);

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
            const SizedBox(height: 25),
            Text(
              'Berita Terpopuler',
              style: blackFontStyle1.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => DetailsNewsPage());
              },
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 331,
                  height: 219,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        width: 331,
                        height: 155,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/Rectangle 255.png',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          width: 325,
                          height: 60,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 11, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Pecinta Alam Tiba di Desa Mulyajaya',
                                    style:
                                        blackFontStyle1.copyWith(fontSize: 15)),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text('Berita Desa', style: blackFontStyle1.copyWith(fontSize: 18)),
            const SizedBox(height: 20),
            Text('Pembuatan Irigasi Baru',
                style: blackFontStyle1.copyWith(fontSize: 18)),
            const SizedBox(height: 5),
            Text(
                'Desa Mulyajaya adalah desa yang terletak di Kecamatan Banjarwangi, Garut, Jawa Barat Indonesia',
                style: blackFontStyle3.copyWith(fontSize: 15)),
            const SizedBox(height: 10),
            const Divider(height: 1),
          ],
        ),
      )),
    );
  }
}
