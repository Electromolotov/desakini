part of 'pages.dart';

class UploadPicProduct extends StatelessWidget {
  UploadPicProduct({Key? key}) : super(key: key);

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
            Text('Upload produk yang akan\nanda jual',
                style: blackFontStyle1.copyWith(fontSize: 26)),
            const SizedBox(height: 25),
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(
                  labelText: 'Upload gambar',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                  // hintText: 'Masukan nama produk',
                  // hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Nama produk',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Masukan nama produk',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Harga',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Harga produk',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Kategori',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Pilih kategori produk',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Deskripsi',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Informasi detail produk',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 50),
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
                  Get.to(() => SuccessRegisPage());
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
