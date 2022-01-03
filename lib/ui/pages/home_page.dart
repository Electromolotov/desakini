part of 'pages.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _pages = [
    DaruratPage(),
    NotifPage(),
    HomeScreen(),
    WalletPage(),
    QrPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: mainColor,
          iconSize: 28,
          selectedIconTheme: IconThemeData(color: mainColor),
          unselectedItemColor: Colors.black,
          unselectedIconTheme: const IconThemeData(color: Colors.black),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.warning,
                color: Colors.red,
              ),
              label: 'Darurat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_outlined,
              ),
              label: 'Notifikasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
              ),
              label: 'Dompet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_outlined),
              label: 'Scan QR',
            ),
          ],
        ),
        body: _pages.elementAt(_selectedIndex));
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController _pageViewController = PageController();

  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      _handleTabSelection();
    });
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: EndDrawer(),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(153),
                              bottomRight: Radius.circular(153)),
                          color: mainColor),
                      height: 211,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 33, vertical: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => ProfilPengguna());
                                  },
                                  child: const Icon(Icons.person_outline,
                                      color: Colors.white),
                                ),
                                Text(
                                  'DESAKINI',
                                  style: blackFontStyle1.copyWith(
                                      fontSize: 13, color: Colors.white),
                                ),
                                GestureDetector(
                                    onTap: _openEndDrawer,
                                    child: const Icon(Icons.menu,
                                        color: Colors.white)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text(
                                'Selamat Datang',
                                style: blackFontStyle3.copyWith(
                                    fontSize: 20, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 150, left: defaultMargin, bottom: 16),
                      child: Text(
                        'Menu',
                        style: blackFontStyle1.copyWith(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 35,
                          childAspectRatio: 0.6,
                        ),
                        children: [
                          // Item Modul Desakini
                          GestureDetector(
                              onTap: () {
                                Get.to(() => BankPage());
                              },
                              child: ItemGrid(
                                  Icons.account_balance_outlined, 'BANK')),
                          ItemGrid(Icons.apartment_outlined, 'KEMENDES'),
                          ItemGrid(
                              Icons.landscape_outlined, 'UMKM & PARIWISATA'),
                          ItemGrid(Icons.cached_outlined, 'LIMBAH SAMPAH'),
                          ItemGrid(
                              Icons.portrait_outlined, 'DESA CORPORATIONS'),
                          ItemGrid(Icons.people_outline, 'SOSIAL'),
                          GestureDetector(
                              onTap: () {
                                Get.to(() => NewsPage());
                              },
                              child:
                                  ItemGrid(Icons.summarize_outlined, 'BERITA')),
                          ItemGrid(Icons.more_horiz_outlined, 'LIHAT SEMUA'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 20),
                      child: Center(
                        child: Text('Profil Desa',
                            style: blackFontStyle1.copyWith(fontSize: 13)),
                      ),
                    ),
                    Center(child: Image.asset('assets/Ellipse 8.png')),
                    Center(
                        child: Text('Desa',
                            style: blackFontStyle1.copyWith(fontSize: 15))),
                    Center(
                        child: Text('MULYAJAYA',
                            style: blackFontStyle1.copyWith(fontSize: 18))),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: defaultMargin,
                          left: defaultMargin,
                          top: 30,
                          bottom: 23),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.people_outline),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '500 Jiwa',
                                style: blackFontStyle1.copyWith(fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.landscape_outlined),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '8.8 Km',
                                style: blackFontStyle1.copyWith(fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.store_outlined),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                '150 UMKM',
                                style: blackFontStyle1.copyWith(fontSize: 15),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: defaultMargin,
                          left: defaultMargin,
                          bottom: 30),
                      child: Text(
                        'Asal Usul Pakemitan Kadu Agung / Desa Ciwidey Beberapat ahun yang lama, ada tiga orang yang berkelana untuk menyebarkan agama Islam hingga sampailah mereka di suatu daerah hutan. \n\n Mereka berasal dari Daerah Banten yang sedang mengembangkan misi Islam di daerah pakemitan',
                        style: blackFontStyle3.copyWith(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: defaultMargin, bottom: 21),
                      child: Text('Sejarah Desa',
                          style: blackFontStyle1.copyWith(fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: defaultMargin,
                          bottom: 27,
                          right: defaultMargin),
                      child: Text(
                          'Asal Usul Pakemitan Kadu Agung / Desa Ciwidey Beberapat tahun yang lama, ada tiga orang yang berkelana untuk menyebarkan agama Islam hingga sampailah mereka di suatu daerah hutan belantara. \n\n Ketiga orang tersebut adalah \n (1) Eyang Dalem Rangga Sadana, \n (2) Eyang Camat Nata Wiguna, \n (3) Eyang Jaga Setru. \n\n Mereka berasal dari Daerah Banten yang sedang mengembangkan misi Islam di daerah pakemitan ',
                          style: blackFontStyle3.copyWith(fontSize: 15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: defaultMargin,
                          left: defaultMargin,
                          bottom: 60),
                      child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 7,
                          mainAxisSpacing: 9,
                          childAspectRatio: 3,
                        ),
                        children: [
                          ItemGridDesa('Transportasi'),
                          ItemGridDesa('Kredit Usaha Rakyat'),
                          GestureDetector(
                              onTap: () {
                                Get.to(() => LaporanPage());
                              },
                              child: ItemGridDesa('Laporan')),
                          ItemGridDesa('Layanan'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: defaultMargin, right: defaultMargin),
                      child: Column(
                        children: [
                          TabBar(
                            controller: _tabController,
                            unselectedLabelColor: Colors.black,
                            labelStyle: blackFontStyle3.copyWith(fontSize: 14),
                            indicator: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(50), // Creates border
                                color: mainColor),
                            tabs: const [
                              Tab(
                                text: 'Desaku',
                              ),
                              Tab(
                                text: 'Penawaran',
                              ),
                              Tab(
                                text: 'Permintaan',
                              )
                            ],
                          ),
                          // Item Tabbar
                          [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 40,
                                  right: defaultMargin,
                                  left: defaultMargin),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/Ellipse 6.png'),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'ANGGARA PERMANA',
                                            style: blackFontStyle1.copyWith(
                                                fontSize: 18),
                                          ),
                                          Text(
                                            'Kepala Desa Cisurupan',
                                            style: blackFontStyle3.copyWith(
                                                fontSize: 12),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 63),
                                  Text('Lembaga Desa',
                                      style: blackFontStyle1.copyWith(
                                          fontSize: 18)),
                                  // gambar struktur organisasi
                                  const SizedBox(height: 50)
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 26,
                                  right: defaultMargin,
                                  left: defaultMargin),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.search),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _controller1,
                                          decoration: const InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 1),
                                          )),
                                        ),
                                      ),
                                      const Icon(Icons.sort_outlined,
                                          textDirection: TextDirection.rtl),
                                    ],
                                  ),
                                  const SizedBox(height: 17),
                                  ItemTabPenawaran(
                                    image:
                                        Image.asset('assets/Rectangle 249.png'),
                                    cost: 'Rp.2.000.000/Ton',
                                    productName: 'Rempah rempah',
                                    quantity: '500 Ton',
                                    storeName: 'Toko Barokah',
                                  ),
                                  const SizedBox(height: 13)
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 26,
                                  right: defaultMargin,
                                  left: defaultMargin),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 28),
                                    width: 336,
                                    height: 87,
                                    color: greyColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: defaultMargin,
                                          right: defaultMargin),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Ingin menjadi \n penjual ?',
                                            style: blackFontStyle1.copyWith(
                                                fontSize: 18),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(() => StorePage());
                                            },
                                            child: Container(
                                              width: 108,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: mainColor,
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              ),
                                              child: Center(
                                                child: Text('Daftar Disini',
                                                    style: blackFontStyle3
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.search),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _controller2,
                                          decoration: const InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 1),
                                          )),
                                        ),
                                      ),
                                      const Icon(Icons.sort_outlined,
                                          textDirection: TextDirection.rtl),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Peternakan',
                                        style: blackFontStyle1.copyWith(
                                            fontSize: 18),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(() => AllPeternakanPage());
                                        },
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Lihat seluruh',
                                                style: blackFontStyle3.copyWith(
                                                    fontSize: 12,
                                                    color: mainColor),
                                              ),
                                              Icon(
                                                Icons.summarize_outlined,
                                                size: 13,
                                                color: mainColor,
                                              )
                                            ]),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 7),
                                  ItemTabPenawaran(
                                    image:
                                        Image.asset('assets/Rectangle 249.png'),
                                    cost: 'Rp.2.000.000/Ton',
                                    productName: 'Rempah rempah',
                                    quantity: '500 Ton',
                                    storeName: 'Toko Barokah',
                                  ),
                                  const SizedBox(height: 42),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => AllPerkebunanPage());
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Perkebunan',
                                          style: blackFontStyle1.copyWith(
                                              fontSize: 18),
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Lihat seluruh',
                                                style: blackFontStyle3.copyWith(
                                                    fontSize: 12,
                                                    color: mainColor),
                                              ),
                                              Icon(
                                                Icons.summarize_outlined,
                                                size: 13,
                                                color: mainColor,
                                              )
                                            ])
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  ItemTabPenawaran(
                                    image:
                                        Image.asset('assets/Rectangle 250.png'),
                                    cost: 'Rp.2.000.000/Ton',
                                    productName: 'Gula Merah',
                                    quantity: '500 Ton',
                                    storeName: 'Toko Barokah',
                                  ),
                                  const SizedBox(
                                    height: 13,
                                  )
                                ],
                              ),
                            ),
                          ][_tabController.index]
                        ],
                      ),
                    ),
                  ],
                ),
                // Carousel
                Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Align(
                        alignment: const Alignment(0, 1.1),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultMargin),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Colors.white),
                            height: 184,
                            width: 331,
                            child: PageView(
                              controller: _pageViewController,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Stack(children: [
                                  Image.asset('assets/Rectangle 242.png'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 13, bottom: 37),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text('Kawah Talaga Bodas',
                                              style: blackFontStyle3.copyWith(
                                                  fontSize: 20,
                                                  color: Colors.white)),
                                        ),
                                        Text(
                                          'Garut, Jawa Barat',
                                          style: blackFontStyle3.copyWith(
                                              fontSize: 11,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                                Image.network(
                                  'https://picsum.photos/seed/95/600',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Image.network(
                                  'https://picsum.photos/seed/814/600',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SmoothPageIndicator(
                      controller: _pageViewController,
                      count: 3,
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
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
