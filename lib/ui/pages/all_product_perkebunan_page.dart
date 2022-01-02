part of 'pages.dart';

class AllPerkebunanPage extends StatelessWidget {
  AllPerkebunanPage({Key? key}) : super(key: key);

  TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const Icon(Icons.menu, color: Colors.transparent),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Icon(Icons.search),
                Expanded(
                  child: TextFormField(
                    controller: _controller1,
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
                  ),
                ),
                const Icon(Icons.sort_outlined,
                    textDirection: TextDirection.rtl),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Hasil Perkebunan',
              style: blackFontStyle1.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 30,
                        childAspectRatio: 1,
                      ),
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => DetailsProductPage());
                          },
                          child: ItemGridAllProduct(
                              hargaProduk: 'Rp.94.000/ton',
                              imagePath: 'assets/Rectangle 254.png',
                              nameProduct: 'Telur Ayam',
                              tokoProduk: 'Grosir Asep Banten'),
                        ),
                        ItemGridAllProduct(
                            hargaProduk: 'Rp.94.000/ton',
                            imagePath: 'assets/Rectangle 254.png',
                            nameProduct: 'Telur Ayam',
                            tokoProduk: 'Grosir Asep Banten'),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      )),
    );
  }
}
