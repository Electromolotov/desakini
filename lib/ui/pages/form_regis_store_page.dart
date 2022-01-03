part of 'pages.dart';

class FormRegisStore extends StatelessWidget {
  FormRegisStore({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();

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
        child: SingleChildScrollView(
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
              const SizedBox(height: 30),
              Text('Yuk, lengkapi data\ndiri untuk pendaftaran',
                  style: blackFontStyle1.copyWith(fontSize: 26)),
              const SizedBox(height: 25),
              TextFormField(
                controller: _controller1,
                decoration: InputDecoration(
                    labelText: 'Nama',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: 'Nama lengkap',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controller2,
                decoration: InputDecoration(
                    labelText: 'NIK',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: 'Nomor Induk Kependudukan',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controller3,
                decoration: InputDecoration(
                    labelText: 'Alamat',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: 'Alamat lengkap',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controller4,
                decoration: InputDecoration(
                    labelText: 'Pekerjaan',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: 'Masukan informasi pekerjaan',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controller5,
                decoration: InputDecoration(
                    labelText: 'Nomor telp',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: 'Nomor telepon atau nomor ponsel',
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
                    Get.to(() => UploadIdentity());
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
