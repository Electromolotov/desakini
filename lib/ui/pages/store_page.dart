part of 'pages.dart';

class StorePage extends StatelessWidget {
  StorePage({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _controller1 = TextEditingController();
  PageController _pageViewController = PageController();

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
            const SizedBox(height: 50),
            SizedBox(
              // color: mainColor,
              height: 480,
              child: PageView(
                controller: _pageViewController,
                scrollDirection: Axis.horizontal,
                children: [
                  Column(children: [
                    Text('Kamu ingin\nberjualan?\n\nIkuti langkah berikut ini',
                        textAlign: TextAlign.center,
                        style: blackFontStyle1.copyWith(
                            fontSize: 26, color: mainColor)),
                    Image.asset('assets/slide1.png'),
                  ]),
                  Column(children: [
                    Text('Masukkan\ndata diri kamu',
                        textAlign: TextAlign.center,
                        style: blackFontStyle1.copyWith(
                            fontSize: 26, color: mainColor)),
                    Image.asset('assets/slide2.png'),
                  ]),
                  Column(children: [
                    Text('Upload\nKTP',
                        textAlign: TextAlign.center,
                        style: blackFontStyle1.copyWith(
                            fontSize: 26, color: mainColor)),
                    Image.asset('assets/slide3.png'),
                  ]),
                  Column(children: [
                    Text('Upload produk yang akan\ndijual',
                        textAlign: TextAlign.center,
                        style: blackFontStyle1.copyWith(
                            fontSize: 26, color: mainColor)),
                    Image.asset('assets/slide4.png'),
                  ]),
                  Column(children: [
                    Text('Tunggu verifikasi',
                        textAlign: TextAlign.center,
                        style: blackFontStyle1.copyWith(
                            fontSize: 26, color: mainColor)),
                    Image.asset('assets/slide5.png'),
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _pageViewController,
                count: 5,
                axisDirection: Axis.horizontal,
                onDotClicked: (i) {
                  _pageViewController.animateToPage(
                    i,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                effect: ExpandingDotsEffect(
                  expansionFactor: 2,
                  spacing: 8,
                  radius: 16,
                  dotWidth: 10,
                  dotHeight: 10,
                  dotColor: greyDotIndicator,
                  activeDotColor: mainColor,
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
            const SizedBox(height: 25),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: 313, height: 52),
              child: ElevatedButton(
                child: Center(
                    child: Text('Lanjutkan',
                        style: blackFontStyle3.copyWith(
                            fontSize: 15, color: Colors.white))),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: greyDotIndicator),
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mainColor)),
                onPressed: () {
                  Get.to(() => FormRegisStore());
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
