part of 'pages.dart';

class UploadIdentity extends StatelessWidget {
  UploadIdentity({Key? key}) : super(key: key);

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
            const SizedBox(height: 30),
            Text('Upload e-KTP untuk\nmelanjutkan',
                style: blackFontStyle1.copyWith(fontSize: 26)),
            const SizedBox(height: 35),
            Center(
              child: Image.asset('assets/cc-pic.png'),
            ),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 153,
                  height: 43,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(width: 1, color: mainColor)),
                  child: Center(
                    child: Text(
                      'Galeri',
                      style: blackFontStyle3.copyWith(
                          fontSize: 15, color: mainColor),
                    ),
                  ),
                ),
              ),
              Container(
                width: 153,
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    border: Border.all(width: 1, color: mainColor)),
                child: Center(
                  child: Text(
                    'Kamera',
                    style: blackFontStyle3.copyWith(
                        fontSize: 15, color: mainColor),
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 150),
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
                  Get.to(() => UploadPicProduct());
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
