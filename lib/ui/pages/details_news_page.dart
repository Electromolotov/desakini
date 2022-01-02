part of 'pages.dart';

class DetailsNewsPage extends StatelessWidget {
  DetailsNewsPage({Key? key}) : super(key: key);

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
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    width: 331,
                    height: 286,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/Rectangle 256.png'),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 19, bottom: 50),
                          child: Text('Pecinta Alam\nTiba di Desa\nMulyajaya',
                              style: blackFontStyle1.copyWith(
                                  fontSize: 26, color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                      'Asal Usul Pakemitan Kadu Agung / Desa Ciwidey Beberapat ahun yang lama, ada tiga orang yang berkelana untuk  menyebarkan agama Islam hingga sampailah mereka di suatu daerah hutan\n\n Mereka berasal dari Daerah Banten yang sedang mengembangkan misi Islam di daerah pakemitan  Mereka berasal dari Daerah Banten yang sedang mengembangkan misi Islam di daerah pakemitan Mereka berasal dari Daerah Banten',
                      style: blackFontStyle3.copyWith(
                        fontSize: 15,
                      )),
                  const SizedBox(height: 50),
                  Text('Komentar',
                      style: blackFontStyle1.copyWith(fontSize: 26)),
                  const SizedBox(height: 30),
                  Row(children: [
                    Image.asset('assets/Ellipse 23.png'),
                    const SizedBox(width: 20),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Riki Firdaus',
                              style: blackFontStyle1.copyWith(
                                fontSize: 16,
                              )),
                          Text('1 menit yang lalu',
                              style: blackFontStyle3.copyWith(
                                fontSize: 11,
                              )),
                          Text(
                              'mengembangkan misi Islam di daerah\npakemitan mengembangkan misi',
                              overflow: TextOverflow.fade,
                              style: blackFontStyle3.copyWith(
                                fontSize: 12,
                              )),
                        ])
                  ]),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          scrollPhysics: NeverScrollableScrollPhysics(),
                          controller: _controller1,
                          decoration: InputDecoration(
                              hintText: 'Tulis komentar anda',
                              hintStyle:
                                  TextStyle(fontSize: 13, color: greyfontColor),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                              )),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.send_outlined,
                            color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: mainColor, // <-- Button color
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
